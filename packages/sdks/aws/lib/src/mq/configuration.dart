import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_state.dart';

/// Manages an Amazon MQ configuration. Use this resource to create and manage broker configurations for ActiveMQ and RabbitMQ brokers.
///
/// ## Example Usage
///
/// ### ActiveMQ
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Configuration("example", {
///     description: "Example Configuration",
///     name: "example",
///     engineType: "ActiveMQ",
///     engineVersion: "5.19",
///     data: `<?xml version=\\"1.0\\" encoding=\\"UTF-8\\" standalone=\\"yes\\"?>
/// <broker xmlns=\\"http://activemq.apache.org/schema/core\\">
///   <plugins>
///     <forcePersistencyModeBrokerPlugin persistenceFlag=\\"true\\"/>
///     <statisticsBrokerPlugin/>
///     <timeStampingBrokerPlugin ttlCeiling=\\"86400000\\" zeroExpirationOverride=\\"86400000\\"/>
///   </plugins>
/// </broker>
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Configuration("example",
///     description="Example Configuration",
///     name="example",
///     engine_type="ActiveMQ",
///     engine_version="5.19",
///     data="""<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
///   <plugins>
///     <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
///     <statisticsBrokerPlugin/>
///     <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
///   </plugins>
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
///     var example = new Aws.Mq.Configuration("example", new()
///     {
///         Description = "Example Configuration",
///         Name = "example",
///         EngineType = "ActiveMQ",
///         EngineVersion = "5.19",
///         Data = @"<?xml version=\""1.0\"" encoding=\""UTF-8\"" standalone=\""yes\""?>
/// <broker xmlns=\""http://activemq.apache.org/schema/core\"">
///   <plugins>
///     <forcePersistencyModeBrokerPlugin persistenceFlag=\""true\""/>
///     <statisticsBrokerPlugin/>
///     <timeStampingBrokerPlugin ttlCeiling=\""86400000\"" zeroExpirationOverride=\""86400000\""/>
///   </plugins>
/// </broker>
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mq.NewConfiguration(ctx, "example", &mq.ConfigurationArgs{
/// 			Description:   pulumi.String("Example Configuration"),
/// 			Name:          pulumi.String("example"),
/// 			EngineType:    pulumi.String("ActiveMQ"),
/// 			EngineVersion: pulumi.String("5.19"),
/// 			Data: pulumi.String(`<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
///   <plugins>
///     <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
///     <statisticsBrokerPlugin/>
///     <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
///   </plugins>
/// </broker>
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mq_configuration" "example" {
///   description    = "Example Configuration"
///   name           = "example"
///   engine_type    = "ActiveMQ"
///   engine_version = "5.19"
///   data           = "<?xml version=\\\"1.0\\\" encoding=\\\"UTF-8\\\" standalone=\\\"yes\\\"?>\n<broker xmlns=\\\"http://activemq.apache.org/schema/core\\\">\n  <plugins>\n    <forcePersistencyModeBrokerPlugin persistenceFlag=\\\"true\\\"/>\n    <statisticsBrokerPlugin/>\n    <timeStampingBrokerPlugin ttlCeiling=\\\"86400000\\\" zeroExpirationOverride=\\\"86400000\\\"/>\n  </plugins>\n</broker>\n"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Configuration("example", ConfigurationArgs.builder()
///             .description("Example Configuration")
///             .name("example")
///             .engineType("ActiveMQ")
///             .engineVersion("5.19")
///             .data("""
/// <?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
/// <broker xmlns=\"http://activemq.apache.org/schema/core\">
///   <plugins>
///     <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
///     <statisticsBrokerPlugin/>
///     <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
///   </plugins>
/// </broker>
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mq:Configuration
///     properties:
///       description: Example Configuration
///       name: example
///       engineType: ActiveMQ
///       engineVersion: '5.19'
///       data: |
///         <?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>
///         <broker xmlns=\"http://activemq.apache.org/schema/core\">
///           <plugins>
///             <forcePersistencyModeBrokerPlugin persistenceFlag=\"true\"/>
///             <statisticsBrokerPlugin/>
///             <timeStampingBrokerPlugin ttlCeiling=\"86400000\" zeroExpirationOverride=\"86400000\"/>
///           </plugins>
///         </broker>
/// ```
///
///
/// ### RabbitMQ
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mq.Configuration("example", {
///     description: "Example Configuration",
///     name: "example",
///     engineType: "RabbitMQ",
///     engineVersion: "4.2",
///     data: `# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mq.Configuration("example",
///     description="Example Configuration",
///     name="example",
///     engine_type="RabbitMQ",
///     engine_version="4.2",
///     data="""# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
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
///     var example = new Aws.Mq.Configuration("example", new()
///     {
///         Description = "Example Configuration",
///         Name = "example",
///         EngineType = "RabbitMQ",
///         EngineVersion = "4.2",
///         Data = @"# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mq.NewConfiguration(ctx, "example", &mq.ConfigurationArgs{
/// 			Description:   pulumi.String("Example Configuration"),
/// 			Name:          pulumi.String("example"),
/// 			EngineType:    pulumi.String("RabbitMQ"),
/// 			EngineVersion: pulumi.String("4.2"),
/// 			Data:          pulumi.String("# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds\nconsumer_timeout = 1800000\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mq_configuration" "example" {
///   description    = "Example Configuration"
///   name           = "example"
///   engine_type    = "RabbitMQ"
///   engine_version = "4.2"
///   data           = "# Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds\nconsumer_timeout = 1800000\n"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Configuration("example", ConfigurationArgs.builder()
///             .description("Example Configuration")
///             .name("example")
///             .engineType("RabbitMQ")
///             .engineVersion("4.2")
///             .data("""
/// # Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
/// consumer_timeout = 1800000
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mq:Configuration
///     properties:
///       description: Example Configuration
///       name: example
///       engineType: RabbitMQ
///       engineVersion: '4.2'
///       data: |
///         # Default RabbitMQ delivery acknowledgement timeout is 30 minutes in milliseconds
///         consumer_timeout = 1800000
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MQ Configurations using the configuration ID. For example:
///
/// ```sh
/// $ pulumi import aws:mq/configuration:Configuration example c-0187d1eb-88c8-475a-9b79-16ef5a10c94f
/// ```
class Configuration extends pulumi.CustomResource {
  /// ARN of the configuration.
  late final pulumi.Output<String> arn;
  /// Authentication strategy associated with the configuration. Valid values are `simple` and `ldap`. `ldap` is not supported for RabbitMQ engine type.
  late final pulumi.Output<String> authenticationStrategy;
  /// Broker configuration in XML format for ActiveMQ or Cuttlefish format for RabbitMQ. See [AWS documentation](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-broker-configuration-parameters.html) for supported parameters and format of the XML.
  late final pulumi.Output<String> data;
  /// Description of the configuration.
  late final pulumi.Output<String?> description;
  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  late final pulumi.Output<String> engineType;
  /// Version of the broker engine.
  late final pulumi.Output<String> engineVersion;
  /// Latest revision of the configuration.
  late final pulumi.Output<int> latestRevision;
  /// Name of the configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set to `true` if you do not wish the configuration to be deleted at destroy time, and instead just remove the configuration from the Terraform state. Default is `false`.
  late final pulumi.Output<bool?> skipDestroy;
  /// Key-value map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_mq_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    data = registerOutput<String>('data');
    description = registerOutput<String?>('description');
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mq/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    data = registerOutput<String>('data');
    description = registerOutput<String?>('description');
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Configuration] resource.
  Configuration.reference(String urn)
    : super(
        'aws:mq/configuration:Configuration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    authenticationStrategy = registerOutput<String>('authenticationStrategy');
    data = registerOutput<String>('data');
    description = registerOutput<String?>('description');
    engineType = registerOutput<String>('engineType');
    engineVersion = registerOutput<String>('engineVersion');
    latestRevision = registerOutput<int>('latestRevision');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
