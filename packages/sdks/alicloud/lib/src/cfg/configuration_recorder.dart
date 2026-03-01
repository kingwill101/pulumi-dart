import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_recorder_args.dart';
import 'configuration_recorder_state.dart';

/// Provides a Alicloud Config Configuration Recorder resource. Cloud Config is a specialized service for evaluating resources. Cloud Config tracks configuration changes of your resources and evaluates configuration compliance. Cloud Config can help you evaluate numerous resources and maintain the continuous compliance of your cloud infrastructure.
/// For information about Alicloud Config Configuration Recorder and how to use it, see [What is Configuration Recorder.](https://www.alibabacloud.com/help/en/cloud-config/latest/startconfigurationrecorder)
///
/// > **NOTE:** Available since v1.99.0.
///
/// > **NOTE:** The Cloud Config region only support `cn-shanghai` and `ap-southeast-1`.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.cfg.ConfigurationRecorder("example", {resourceTypes: [
///     "ACS::ECS::Instance",
///     "ACS::ECS::Disk",
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cfg.ConfigurationRecorder("example", resource_types=[
///     "ACS::ECS::Instance",
///     "ACS::ECS::Disk",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cfg.ConfigurationRecorder("example", new()
///     {
///         ResourceTypes = new[]
///         {
///             "ACS::ECS::Instance",
///             "ACS::ECS::Disk",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewConfigurationRecorder(ctx, "example", &cfg.ConfigurationRecorderArgs{
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("ACS::ECS::Instance"),
/// 				pulumi.String("ACS::ECS::Disk"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cfg.ConfigurationRecorder;
/// import com.pulumi.alicloud.cfg.ConfigurationRecorderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ConfigurationRecorder("example", ConfigurationRecorderArgs.builder()
///             .resourceTypes(
///                 "ACS::ECS::Instance",
///                 "ACS::ECS::Disk")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cfg:ConfigurationRecorder
///     properties:
///       resourceTypes:
///         - ACS::ECS::Instance
///         - ACS::ECS::Disk
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alicloud Config Configuration Recorder can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/configurationRecorder:ConfigurationRecorder example 122378463********
/// ```
class ConfigurationRecorder extends pulumi.CustomResource {
  /// Whether to use the enterprise version configuration audit. Valid values: `true` and `false`. Default value `false`. For enterprise accounts, We recommend you to use the resource alicloud_config_aggregator.
  late final pulumi.Output<bool> enterpriseEdition;
  /// Enterprise version configuration audit enabled status. Values: `REGISTRABLE`: Not enabled, `BUILDING`: Building and `REGISTERED`: Enabled.
  late final pulumi.Output<String> organizationEnableStatus;
  /// The ID of the Enterprise management account.
  late final pulumi.Output<int> organizationMasterId;
  /// A list of resource types to be monitored. [Resource types that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  /// * If you use an ordinary account, the `resource_types` supports the update operation after the process of creation is completed.
  /// * If you use an enterprise account, the `resource_types` does not support updating.
  late final pulumi.Output<List<String>> resourceTypes;
  /// Status of resource monitoring. Values: `REGISTRABLE`: Not registered, `BUILDING`: Under construction, `REGISTERED`: Registered and `REBUILDING`: Rebuilding.
  late final pulumi.Output<String> status;

  /// Creates a new [ConfigurationRecorder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationRecorder]. {@macro pulumi_cfg_configuration_recorder_configuration_recorder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationRecorder(
    String name, {
    ConfigurationRecorderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/configurationRecorder:ConfigurationRecorder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enterpriseEdition = registerOutput<bool>('enterpriseEdition');
    this.organizationEnableStatus = registerOutput<String>('organizationEnableStatus');
    this.organizationMasterId = registerOutput<int>('organizationMasterId');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [ConfigurationRecorder] resource's state with the given [name] and [id].
  static ConfigurationRecorder get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationRecorderState? state,
  }) {
    return ConfigurationRecorder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConfigurationRecorder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/configurationRecorder:ConfigurationRecorder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enterpriseEdition = registerOutput<bool>('enterpriseEdition');
    this.organizationEnableStatus = registerOutput<String>('organizationEnableStatus');
    this.organizationMasterId = registerOutput<int>('organizationMasterId');
    this.resourceTypes = registerOutput<List<String>>('resourceTypes');
    this.status = registerOutput<String>('status');
  }
}
