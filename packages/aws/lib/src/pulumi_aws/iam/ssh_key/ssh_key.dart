import 'package:pulumi/pulumi.dart';
import 'ssh_key_args.dart';

/// Uploads an SSH public key and associates it with the specified IAM user.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user = new aws.iam.User("user", {
/// name: "test-user",
/// path: "/",
/// });
/// const userSshKey = new aws.iam.SshKey("user", {
/// username: user.name,
/// encoding: "SSH",
/// publicKey: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user = aws.iam.User("user",
/// name="test-user",
/// path="/")
/// user_ssh_key = aws.iam.SshKey("user",
/// username=user.name,
/// encoding="SSH",
/// public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var user = new Aws.Iam.User("user", new()
/// {
/// Name = "test-user",
/// Path = "/",
/// });
///
/// var userSshKey = new Aws.Iam.SshKey("user", new()
/// {
/// Username = user.Name,
/// Encoding = "SSH",
/// PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// user, err := iam.NewUser(ctx, "user", &iam.UserArgs{
/// Name: pulumi.String("test-user"),
/// Path: pulumi.String("/"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewSshKey(ctx, "user", &iam.SshKeyArgs{
/// Username:  user.Name,
/// Encoding:  pulumi.String("SSH"),
/// PublicKey: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com"),
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.SshKey;
/// import com.pulumi.aws.iam.SshKeyArgs;
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
/// var user = new User("user", UserArgs.builder()
/// .name("test-user")
/// .path("/")
/// .build());
///
/// var userSshKey = new SshKey("userSshKey", SshKeyArgs.builder()
/// .username(user.name())
/// .encoding("SSH")
/// .publicKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// user:
/// type: aws:iam:User
/// properties:
/// name: test-user
/// path: /
/// userSshKey:
/// type: aws:iam:SshKey
/// name: user
/// properties:
/// username: ${user.name}
/// encoding: SSH
/// publicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 mytest@mydomain.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SSH public keys using the <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, <span pulumi-lang-nodejs="`sshPublicKeyId`" pulumi-lang-dotnet="`SshPublicKeyId`" pulumi-lang-go="`sshPublicKeyId`" pulumi-lang-python="`ssh_public_key_id`" pulumi-lang-yaml="`sshPublicKeyId`" pulumi-lang-java="`sshPublicKeyId`">`ssh_public_key_id`</span>, and <span pulumi-lang-nodejs="`encoding`" pulumi-lang-dotnet="`Encoding`" pulumi-lang-go="`encoding`" pulumi-lang-python="`encoding`" pulumi-lang-yaml="`encoding`" pulumi-lang-java="`encoding`">`encoding`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/sshKey:SshKey user user:APKAJNCNNJICVN7CFKCA:SSH
/// ```
class SshKey extends CustomResource {
  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  late final Output<String> encoding;

  /// The MD5 message digest of the SSH public key.
  late final Output<String> fingerprint;

  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
  late final Output<String> publicKey;

  /// The unique identifier for the SSH public key.
  late final Output<String> sshPublicKeyId;

  /// The status to assign to the SSH public key. Active means the key can be used for authentication with an AWS CodeCommit repository. Inactive means the key cannot be used. Default is <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span>.
  late final Output<String> status;

  /// The name of the IAM user to associate the SSH public key with.
  late final Output<String> username;

  SshKey(
    String name, {
    SshKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/sshKey:SshKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.encoding = registerOutput<String>('encoding');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.publicKey = registerOutput<String>('publicKey');
    this.sshPublicKeyId = registerOutput<String>('sshPublicKeyId');
    this.status = registerOutput<String>('status');
    this.username = registerOutput<String>('username');
  }
}
