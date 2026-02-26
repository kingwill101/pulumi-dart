import 'package:pulumi/pulumi.dart';
import 'ssh_public_key_args.dart';

/// The SSH public key information associated with a Google account.
///
///
/// To get more information about SSHPublicKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/oslogin/rest/v1/users.sshPublicKeys)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/oslogin)
///
/// ## Example Usage
///
/// ### Os Login Ssh Key Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const me = gcp.organizations.getClientOpenIdUserInfo({});
/// const cache = new gcp.oslogin.SshPublicKey("cache", {
/// user: me.then(me => me.email),
/// key: std.file({
/// input: "path/to/id_rsa.pub",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// me = gcp.organizations.get_client_open_id_user_info()
/// cache = gcp.oslogin.SshPublicKey("cache",
/// user=me.email,
/// key=std.file(input="path/to/id_rsa.pub").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var me = Gcp.Organizations.GetClientOpenIdUserInfo.Invoke();
///
/// var cache = new Gcp.OsLogin.SshPublicKey("cache", new()
/// {
/// User = me.Apply(getClientOpenIdUserInfoResult => getClientOpenIdUserInfoResult.Email),
/// Key = Std.File.Invoke(new()
/// {
/// Input = "path/to/id_rsa.pub",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oslogin"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// me, err := organizations.GetClientOpenIdUserInfo(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/id_rsa.pub",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = oslogin.NewSshPublicKey(ctx, "cache", &oslogin.SshPublicKeyArgs{
/// User: pulumi.String(me.Email),
/// Key:  pulumi.String(invokeFile.Result),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.oslogin.SshPublicKey;
/// import com.pulumi.gcp.oslogin.SshPublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var me = OrganizationsFunctions.getClientOpenIdUserInfo(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// var cache = new SshPublicKey("cache", SshPublicKeyArgs.builder()
/// .user(me.email())
/// .key(StdFunctions.file(FileArgs.builder()
/// .input("path/to/id_rsa.pub")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cache:
/// type: gcp:oslogin:SshPublicKey
/// properties:
/// user: ${me.email}
/// key:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/id_rsa.pub
/// return: result
/// variables:
/// me:
/// fn::invoke:
/// function: gcp:organizations:getClientOpenIdUserInfo
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// SSHPublicKey can be imported using any of these accepted formats:
///
/// * `users/{{user}}/sshPublicKeys/{{fingerprint}}`
///
/// * `{{user}}/{{fingerprint}}`
///
/// When using the `pulumi import` command, SSHPublicKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default users/{{user}}/sshPublicKeys/{{fingerprint}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oslogin/sshPublicKey:SshPublicKey default {{user}}/{{fingerprint}}
/// ```
class SshPublicKey extends CustomResource {
  /// An expiration time in microseconds since epoch.
  late final Output<String?> expirationTimeUsec;

  /// The SHA-256 fingerprint of the SSH public key.
  late final Output<String> fingerprint;

  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  late final Output<String> key;

  /// The project ID of the Google Cloud Platform project.
  late final Output<String?> project;

  /// The user email.
  late final Output<String> user;

  SshPublicKey(
    String name, {
    SshPublicKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oslogin/sshPublicKey:SshPublicKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.expirationTimeUsec = registerOutput<String?>('expirationTimeUsec');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.key = registerOutput<String>('key');
    this.project = registerOutput<String?>('project');
    this.user = registerOutput<String>('user');
  }
}
