import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_bgp_instance_args.dart';
import 'ddos_bgp_instance_state.dart';

/// ## Import
///
/// Anti-DDoS Pro (DdosBgp) Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/ddosBgpInstance:DdosBgpInstance example <id>
/// ```
class DdosBgpInstance extends pulumi.CustomResource {
  /// The bandwidth of the package configuration.
  late final pulumi.Output<int> bandwidth;
  /// The basic protection bandwidth of the Anti-DDoS Origin Enterprise instance. Default value: `20`. Valid values: `20`.
  late final pulumi.Output<int?> baseBandwidth;
  /// The name of the instance.
  late final pulumi.Output<String> instanceName;
  /// The number of IP addresses that can be protected by the Anti-DDoS Origin Enterprise instance.
  late final pulumi.Output<int> ipCount;
  /// The protection IP address type of the protection package. Valid values:
  /// - `IPv4`
  /// - `IPv6`
  late final pulumi.Output<String> ipType;
  /// Field `name` has been deprecated from provider version 1.259.0. New field `instance_name` instead.
  late final pulumi.Output<String> name;
  /// The normal clean bandwidth. Unit: Mbit/s.
  late final pulumi.Output<int> normalBandwidth;
  /// The duration that you will buy Ddosbgp instance (in month). Valid values: [1~9], 12, 24, 36. Default to 12. At present, the provider does not support modify "period".
  late final pulumi.Output<int?> period;
  /// Resource Group ID
  late final pulumi.Output<String> resourceGroupId;
  /// (Available since v1.259.0) The status of the Instance.
  late final pulumi.Output<String> status;
  /// The key of the tag that is added to the Anti-DDoS Origin instance.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The protection package type of the DDoS native protection instance. Default value: `Enterprise`. Valid values: `Enterprise`, `Professional`.
  late final pulumi.Output<String> type;

  /// Creates a new [DdosBgpInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdosBgpInstance]. {@macro pulumi_ddos_ddos_bgp_instance_ddos_bgp_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdosBgpInstance(
    String name, {
    DdosBgpInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/ddosBgpInstance:DdosBgpInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    baseBandwidth = registerOutput<int?>('baseBandwidth');
    instanceName = registerOutput<String>('instanceName');
    ipCount = registerOutput<int>('ipCount');
    ipType = registerOutput<String>('ipType');
    this.name = registerOutput<String>('name');
    normalBandwidth = registerOutput<int>('normalBandwidth');
    period = registerOutput<int?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DdosBgpInstance] resource's state with the given [name] and [id].
  static DdosBgpInstance get(
    String name,
    pulumi.Input<String> id, {
    DdosBgpInstanceState? state,
  }) {
    return DdosBgpInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DdosBgpInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/ddosBgpInstance:DdosBgpInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    baseBandwidth = registerOutput<int?>('baseBandwidth');
    instanceName = registerOutput<String>('instanceName');
    ipCount = registerOutput<int>('ipCount');
    ipType = registerOutput<String>('ipType');
    this.name = registerOutput<String>('name');
    normalBandwidth = registerOutput<int>('normalBandwidth');
    period = registerOutput<int?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
