import 'package:pulumi/pulumi.dart';
import 'macsec_key_association_args.dart';

/// Provides a MAC Security (MACSec) secret key resource for use with Direct Connect. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for information about MAC Security (MACsec) prerequisites.
///
/// Creating this resource will also create a resource of type <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> which is managed by Direct Connect. While you can import this resource into your state, because this secret is managed by Direct Connect, you will not be able to make any modifications to it. See [How AWS Direct Connect uses AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/integrating_how-services-use-secrets_directconnect.html) for details.
///
/// > **Note:** All arguments including <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> and <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span> will be stored in the raw state as plain-text.
/// > **Note:** The <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span> argument can only be used to reference a previously created MACSec key. You cannot associate a Secrets Manager secret created outside of the <span pulumi-lang-nodejs="`aws.directconnect.MacsecKeyAssociation`" pulumi-lang-dotnet="`aws.directconnect.MacsecKeyAssociation`" pulumi-lang-go="`directconnect.MacsecKeyAssociation`" pulumi-lang-python="`directconnect.MacsecKeyAssociation`" pulumi-lang-yaml="`aws.directconnect.MacsecKeyAssociation`" pulumi-lang-java="`aws.directconnect.MacsecKeyAssociation`">`aws.directconnect.MacsecKeyAssociation`</span> resource.
///
/// ## Example Usage
///
/// ### Create MACSec key with CKN and CAK
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directconnect.getConnection({
/// name: "tf-dx-connection",
/// });
/// const test = new aws.directconnect.MacsecKeyAssociation("test", {
/// connectionId: example.then(example => example.id),
/// ckn: "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// cak: "abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_connection(name="tf-dx-connection")
/// test = aws.directconnect.MacsecKeyAssociation("test",
/// connection_id=example.id,
/// ckn="0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// cak="abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DirectConnect.GetConnection.Invoke(new()
/// {
/// Name = "tf-dx-connection",
/// });
///
/// var test = new Aws.DirectConnect.MacsecKeyAssociation("test", new()
/// {
/// ConnectionId = example.Apply(getConnectionResult => getConnectionResult.Id),
/// Ckn = "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// Cak = "abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directconnect.LookupConnection(ctx, &directconnect.LookupConnectionArgs{
/// Name: "tf-dx-connection",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = directconnect.NewMacsecKeyAssociation(ctx, "test", &directconnect.MacsecKeyAssociationArgs{
/// ConnectionId: pulumi.String(example.Id),
/// Ckn:          pulumi.String("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"),
/// Cak:          pulumi.String("abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789"),
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
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetConnectionArgs;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociation;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociationArgs;
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
/// final var example = DirectconnectFunctions.getConnection(GetConnectionArgs.builder()
/// .name("tf-dx-connection")
/// .build());
///
/// var test = new MacsecKeyAssociation("test", MacsecKeyAssociationArgs.builder()
/// .connectionId(example.id())
/// .ckn("0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
/// .cak("abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:directconnect:MacsecKeyAssociation
/// properties:
/// connectionId: ${example.id}
/// ckn: 0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
/// cak: abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789
/// variables:
/// example:
/// fn::invoke:
/// function: aws:directconnect:getConnection
/// arguments:
/// name: tf-dx-connection
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Create MACSec key with existing Secrets Manager secret
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directconnect.getConnection({
/// name: "tf-dx-connection",
/// });
/// const exampleGetSecret = aws.secretsmanager.getSecret({
/// name: "directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// });
/// const test = new aws.directconnect.MacsecKeyAssociation("test", {
/// connectionId: example.then(example => example.id),
/// secretArn: exampleGetSecret.then(exampleGetSecret => exampleGetSecret.arn),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_connection(name="tf-dx-connection")
/// example_get_secret = aws.secretsmanager.get_secret(name="directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
/// test = aws.directconnect.MacsecKeyAssociation("test",
/// connection_id=example.id,
/// secret_arn=example_get_secret.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DirectConnect.GetConnection.Invoke(new()
/// {
/// Name = "tf-dx-connection",
/// });
///
/// var exampleGetSecret = Aws.SecretsManager.GetSecret.Invoke(new()
/// {
/// Name = "directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
/// });
///
/// var test = new Aws.DirectConnect.MacsecKeyAssociation("test", new()
/// {
/// ConnectionId = example.Apply(getConnectionResult => getConnectionResult.Id),
/// SecretArn = exampleGetSecret.Apply(getSecretResult => getSecretResult.Arn),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directconnect.LookupConnection(ctx, &directconnect.LookupConnectionArgs{
/// Name: "tf-dx-connection",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleGetSecret, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// Name: pulumi.StringRef("directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = directconnect.NewMacsecKeyAssociation(ctx, "test", &directconnect.MacsecKeyAssociationArgs{
/// ConnectionId: pulumi.String(example.Id),
/// SecretArn:    pulumi.String(exampleGetSecret.Arn),
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
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetConnectionArgs;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociation;
/// import com.pulumi.aws.directconnect.MacsecKeyAssociationArgs;
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
/// final var example = DirectconnectFunctions.getConnection(GetConnectionArgs.builder()
/// .name("tf-dx-connection")
/// .build());
///
/// final var exampleGetSecret = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
/// .name("directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef")
/// .build());
///
/// var test = new MacsecKeyAssociation("test", MacsecKeyAssociationArgs.builder()
/// .connectionId(example.id())
/// .secretArn(exampleGetSecret.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:directconnect:MacsecKeyAssociation
/// properties:
/// connectionId: ${example.id}
/// secretArn: ${exampleGetSecret.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:directconnect:getConnection
/// arguments:
/// name: tf-dx-connection
/// exampleGetSecret:
/// fn::invoke:
/// function: aws:secretsmanager:getSecret
/// arguments:
/// name: directconnect!prod/us-east-1/directconnect/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
/// ```
/// <!--End PulumiCodeChooser -->
class MacsecKeyAssociation extends CustomResource {
  /// The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span>.
  late final Output<String?> cak;

  /// The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>.
  late final Output<String> ckn;

  /// The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  late final Output<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// > **Note:** <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> and <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span> are mutually exclusive with <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span> - these arguments cannot be used together. If you use <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> and <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>, you should not use <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span>. If you use the <span pulumi-lang-nodejs="`secretArn`" pulumi-lang-dotnet="`SecretArn`" pulumi-lang-go="`secretArn`" pulumi-lang-python="`secret_arn`" pulumi-lang-yaml="`secretArn`" pulumi-lang-java="`secretArn`">`secret_arn`</span> argument to reference an existing MAC Security (MACSec) secret key, you should not use <span pulumi-lang-nodejs="`ckn`" pulumi-lang-dotnet="`Ckn`" pulumi-lang-go="`ckn`" pulumi-lang-python="`ckn`" pulumi-lang-yaml="`ckn`" pulumi-lang-java="`ckn`">`ckn`</span> or <span pulumi-lang-nodejs="`cak`" pulumi-lang-dotnet="`Cak`" pulumi-lang-go="`cak`" pulumi-lang-python="`cak`" pulumi-lang-yaml="`cak`" pulumi-lang-java="`cak`">`cak`</span>.
  late final Output<String> secretArn;

  /// The date in UTC format that the MAC Security (MACsec) secret key takes effect.
  late final Output<String> startOn;

  /// The state of the MAC Security (MACsec) secret key. The possible values are: associating, associated, disassociating, disassociated. See [MacSecKey](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_MacSecKey.html#DX-Type-MacSecKey-state) for descriptions of each state.
  late final Output<String> state;

  MacsecKeyAssociation(
    String name, {
    MacsecKeyAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/macsecKeyAssociation:MacsecKeyAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cak = registerOutput<String?>('cak');
    this.ckn = registerOutput<String>('ckn');
    this.connectionId = registerOutput<String>('connectionId');
    this.region = registerOutput<String>('region');
    this.secretArn = registerOutput<String>('secretArn');
    this.startOn = registerOutput<String>('startOn');
    this.state = registerOutput<String>('state');
  }
}
