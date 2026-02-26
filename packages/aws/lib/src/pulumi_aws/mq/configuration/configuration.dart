import 'package:pulumi/pulumi.dart';
import 'configuration_args.dart';

/// Manages an Amazon MQ configuration. Use this resource to create and manage broker configurations for ActiveMQ and RabbitMQ brokers.
///
/// ## Example Usage
///
/// ### ActiveMQ
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Configuration("example", {
/// description: "Example Configuration",
/// name: "example",
/// engineType: "ActiveMQ",
/// engineVersion: "5.17.6",
/// data: `<?xml version=\\"1.0\\" encoding=\\"UTF-8\\" standalone=\\"yes\\"?>
/// <broker xmlns=\\"http://activemq.apache.org/schema/core\\">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\\"true\\"/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\\"86400000\\" zeroExpirationOverride=\\"86400000\\"/>
/// </plugins>
/// </broker>
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Configuration("example",
/// description="Example Configuration",
/// name="example",
/// engine_type="ActiveMQ",
/// engine_version="5.17.6",
/// data="""<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
/// </plugins>
/// </broker>
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Mq.Configuration("example", new()
/// {
/// Description = "Example Configuration",
/// Name = "example",
/// EngineType = "ActiveMQ",
/// EngineVersion = "5.17.6",
/// Data = @"<?xml version=\""1.0\"" encoding=\""UTF-8\"" standalone=\""yes\""?>
/// <broker xmlns=\""http://activemq.apache.org/schema/core\"">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\""true\""/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\""86400000\"" zeroExpirationOverride=\""86400000\""/>
/// </plugins>
/// </broker>
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.NewConfiguration(ctx, "example", &mq.ConfigurationArgs{
/// Description:   pulumi.String("Example Configuration"),
/// Name:          pulumi.String("example"),
/// EngineType:    pulumi.String("ActiveMQ"),
/// EngineVersion: pulumi.String("5.17.6"),
/// Data: pulumi.String(`<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
/// </plugins>
/// </broker>
/// `),
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
/// import com.pulumi.aws.mq.Configuration;
/// import com.pulumi.aws.mq.ConfigurationArgs;
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
/// var example = new Configuration("example", ConfigurationArgs.builder()
/// .description("Example Configuration")
/// .name("example")
/// .engineType("ActiveMQ")
/// .engineVersion("5.17.6")
/// .data("""
/// <?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
/// </plugins>
/// </broker>
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:mq:Configuration
/// properties:
/// description: Example Configuration
/// name: example
/// engineType: ActiveMQ
/// engineVersion: 5.17.6
/// data: |
/// <?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
/// <plugins>
/// <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
/// <statisticsBrokerPlugin/>
/// <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
/// </plugins>
/// </broker>
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RabbitMQ
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Configuration("example", {
/// description: "Example Configuration",
/// name: "example",
/// engineType: "RabbitMQ",
/// engineVersion: "3.11.20",
/// data: `# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Configuration("example",
/// description="Example Configuration",
/// name="example",
/// engine_type="RabbitMQ",
/// engine_version="3.11.20",
/// data="""# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Mq.Configuration("example", new()
/// {
/// Description = "Example Configuration",
/// Name = "example",
/// EngineType = "RabbitMQ",
/// EngineVersion = "3.11.20",
/// Data = @"# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mq.NewConfiguration(ctx, "example", &mq.ConfigurationArgs{
/// Description:   pulumi.String("Example Configuration"),
/// Name:          pulumi.String("example"),
/// EngineType:    pulumi.String("RabbitMQ"),
/// EngineVersion: pulumi.String("3.11.20"),
/// Data:          pulumi.String("# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds\nconsumer_timeout = 1800000\n"),
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
/// import com.pulumi.aws.mq.Configuration;
/// import com.pulumi.aws.mq.ConfigurationArgs;
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
/// var example = new Configuration("example", ConfigurationArgs.builder()
/// .description("Example Configuration")
/// .name("example")
/// .engineType("RabbitMQ")
/// .engineVersion("3.11.20")
/// .data("""
/// # Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:mq:Configuration
/// properties:
/// description: Example Configuration
/// name: example
/// engineType: RabbitMQ
/// engineVersion: 3.11.20
/// data: |
/// # Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MQ Configurations using the configuration ID. For example:
///
/// ```sh
/// $ pulumi import aws:mq/configuration:Configuration example c-0187d1eb-88c8-475a-9b79-16ef5a10c94f
/// ```
class Configuration extends CustomResource {
  /// ARN of the configuration.
  late final Output<String> arn;

  /// Authentication strategy associated with the configuration. Valid values are <span pulumi-lang-nodejs="`simple`" pulumi-lang-dotnet="`Simple`" pulumi-lang-go="`simple`" pulumi-lang-python="`simple`" pulumi-lang-yaml="`simple`" pulumi-lang-java="`simple`">`simple`</span> and <span pulumi-lang-nodejs="`ldap`" pulumi-lang-dotnet="`Ldap`" pulumi-lang-go="`ldap`" pulumi-lang-python="`ldap`" pulumi-lang-yaml="`ldap`" pulumi-lang-java="`ldap`">`ldap`</span>. <span pulumi-lang-nodejs="`ldap`" pulumi-lang-dotnet="`Ldap`" pulumi-lang-go="`ldap`" pulumi-lang-python="`ldap`" pulumi-lang-yaml="`ldap`" pulumi-lang-java="`ldap`">`ldap`</span> is not supported for RabbitMQ engine type.
  late final Output<String> authenticationStrategy;

  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  late final Output<String> data;

  /// Description of the configuration.
  late final Output<String?> description;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final Output<String> engineType;

  /// Version of the broker engine.
  late final Output<String> engineVersion;

  /// Latest revision of the configuration.
  late final Output<int> latestRevision;

  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Configuration(
    String name, {
    ConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mq/configuration:Configuration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authenticationStrategy =
        registerOutput<String>('authenticationStrategy');
    this.data = registerOutput<String>('data');
    this.description = registerOutput<String?>('description');
    this.engineType = registerOutput<String>('engineType');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
