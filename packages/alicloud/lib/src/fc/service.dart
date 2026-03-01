import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_log_config.dart';
import 'service_nas_config.dart';
import 'service_tracing_config.dart';
import 'service_vpc_config.dart';

/// Provides a Alicloud Function Compute Service resource. The resource is the base of launching Function and Trigger configuration.
/// For information about Service and how to use it, see [What is Function Compute](https://www.alibabacloud.com/help/en/fc/developer-reference/api-fc-open-2021-04-06-createservice).
///
/// > **NOTE:** The resource requires a provider field 'account_id'. See account_id.
///
/// > **NOTE:** If you happen the error "Argument 'internetAccess' is not supported", you need to log on web console and click button "Apply VPC Function"
/// which is in the upper of [Function Service Web Console](https://fc.console.aliyun.com/) page.
///
/// > **NOTE:** Currently not all regions support Function Compute Service.
/// For more details supported regions, see [Service endpoints](https://www.alibabacloud.com/help/doc-detail/52984.htm)
///
/// > **NOTE:** Available since v1.93.0.
/// ## Module Support
///
/// You can use to the existing fc module to create a service and a function quickly and then set several triggers for it.
///
/// ## Import
///
/// Function Compute Service can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/service:Service foo my-fc-service
/// ```
class Service extends pulumi.CustomResource {
  /// The Function Compute Service description.
  late final pulumi.Output<String?> description;
  /// Whether to allow the Service to access Internet. Default to "true".
  late final pulumi.Output<bool?> internetAccess;
  /// The date this resource was last modified.
  late final pulumi.Output<String> lastModified;
  /// Provide this to store your Function Compute Service logs. Fields documented below. See [Create a Service](https://www.alibabacloud.com/help/doc-detail/51924.htm). `log_config` requires the following: (**NOTE:** If both `project` and `logstore` are empty, log_config is considered to be empty or unset.). See `log_config` below.
  late final pulumi.Output<ServiceLogConfig?> logConfig;
  /// The Function Compute Service name. It is the only in one Alicloud account and is conflict with `name_prefix`.
  late final pulumi.Output<String> name;
  /// Setting a prefix to get a only name. It is conflict with `name`.
  late final pulumi.Output<String?> namePrefix;
  /// Provide [NAS configuration](https://www.alibabacloud.com/help/doc-detail/87401.htm) to allow Function Compute Service to access your NAS resources. See `nas_config` below.
  late final pulumi.Output<ServiceNasConfig?> nasConfig;
  /// Whether to publish creation/change as new Function Compute Service Version. Defaults to `false`.
  late final pulumi.Output<bool?> publish;
  /// RAM role arn attached to the Function Compute Service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  late final pulumi.Output<String?> role;
  /// The Function Compute Service ID.
  late final pulumi.Output<String> serviceId;
  /// Map for tagging resources.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Provide this to allow your Function Compute to report tracing information. Fields documented below. See [Function Compute Tracing Config](https://help.aliyun.com/document_detail/189805.html). `tracing_config` requires the following: (**NOTE:** If both `type` and `params` are empty, tracing_config is considered to be empty or unset.). See `tracing_config` below.
  late final pulumi.Output<ServiceTracingConfig?> tracingConfig;
  /// The latest published version of your Function Compute Service.
  late final pulumi.Output<String> version;
  /// Provide this to allow your Function Compute Service to access your VPC. Fields documented below. See [Function Compute Service in VPC](https://www.alibabacloud.com/help/faq-detail/72959.htm). `vpc_config` requires the following: (**NOTE:** If both `vswitch_ids` and `security_group_id` are empty, vpc_config is considered to be empty or unset.). See `vpc_config` below.
  late final pulumi.Output<ServiceVpcConfig?> vpcConfig;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_fc_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.internetAccess = registerOutput<bool?>('internetAccess');
    this.lastModified = registerOutput<String>('lastModified');
    this.logConfig = registerOutput<ServiceLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.nasConfig = registerOutput<ServiceNasConfig?>('nasConfig');
    this.publish = registerOutput<bool?>('publish');
    this.role = registerOutput<String?>('role');
    this.serviceId = registerOutput<String>('serviceId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tracingConfig = registerOutput<ServiceTracingConfig?>('tracingConfig');
    this.version = registerOutput<String>('version');
    this.vpcConfig = registerOutput<ServiceVpcConfig?>('vpcConfig');
  }
}
