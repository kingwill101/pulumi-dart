import 'package:pulumi/pulumi.dart';
import '../connection_timeouts/connection_timeouts.dart';
import 'connection_args2.dart';

/// Resource for managing an AWS CodeConnections Connection.
///
/// > **NOTE:** The <span pulumi-lang-nodejs="`aws.codeconnections.Connection`" pulumi-lang-dotnet="`aws.codeconnections.Connection`" pulumi-lang-go="`codeconnections.Connection`" pulumi-lang-python="`codeconnections.Connection`" pulumi-lang-yaml="`aws.codeconnections.Connection`" pulumi-lang-java="`aws.codeconnections.Connection`">`aws.codeconnections.Connection`</span> resource is created in the state `PENDING`. Authentication with the connection provider must be completed in the AWS Console. See the [AWS documentation](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html) for details.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codeconnections.Connection("example", {
/// name: "example-connection",
/// providerType: "Bitbucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codeconnections.Connection("example",
/// name="example-connection",
/// provider_type="Bitbucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeConnections.Connection("example", new()
/// {
/// Name = "example-connection",
/// ProviderType = "Bitbucket",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeconnections"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codeconnections.NewConnection(ctx, "example", &codeconnections.ConnectionArgs{
/// Name:         pulumi.String("example-connection"),
/// ProviderType: pulumi.String("Bitbucket"),
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
/// import com.pulumi.aws.codeconnections.Connection;
/// import com.pulumi.aws.codeconnections.ConnectionArgs;
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
/// var example = new Connection("example", ConnectionArgs.builder()
/// .name("example-connection")
/// .providerType("Bitbucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codeconnections:Connection
/// properties:
/// name: example-connection
/// providerType: Bitbucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeConnections connection.
///
///
/// Using `pulumi import`, import CodeConnections connection using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeconnections/connection:Connection test-connection arn:aws:codeconnections:us-west-1:0123456789:connection/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class Connection2 extends CustomResource {
  /// The codeconnections connection ARN.
  late final Output<String> arn;

  /// The codeconnections connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  late final Output<String> connectionStatus;

  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with <span pulumi-lang-nodejs="`providerType`" pulumi-lang-dotnet="`ProviderType`" pulumi-lang-go="`providerType`" pulumi-lang-python="`provider_type`" pulumi-lang-yaml="`providerType`" pulumi-lang-java="`providerType`">`provider_type`</span>
  late final Output<String?> hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> will create a new resource.
  late final Output<String> name;
  late final Output<String> ownerAccountId;

  /// The name of the external provider where your third-party code repository is configured. Changing <span pulumi-lang-nodejs="`providerType`" pulumi-lang-dotnet="`ProviderType`" pulumi-lang-go="`providerType`" pulumi-lang-python="`provider_type`" pulumi-lang-yaml="`providerType`" pulumi-lang-java="`providerType`">`provider_type`</span> will create a new resource. Conflicts with <span pulumi-lang-nodejs="`hostArn`" pulumi-lang-dotnet="`HostArn`" pulumi-lang-go="`hostArn`" pulumi-lang-python="`host_arn`" pulumi-lang-yaml="`hostArn`" pulumi-lang-java="`hostArn`">`host_arn`</span>.
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ConnectionTimeouts?> timeouts;

  Connection2(
    String name, {
    ConnectionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeconnections/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionTimeouts?>('timeouts');
  }
}
