import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_args.dart';
import 'dedicated_host_state.dart';

/// ## Import
///
/// ApsaraDB for MyBase Dedicated Host can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cddc/dedicatedHost:DedicatedHost example <dedicated_host_group_id>:<dedicated_host_id>
/// ```
class DedicatedHost extends pulumi.CustomResource {
  /// Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  late final pulumi.Output<String> allocationStatus;

  /// Specifies whether to enable the auto-renewal feature.
  late final pulumi.Output<bool?> autoRenew;

  /// The ID of the dedicated cluster.
  late final pulumi.Output<String> dedicatedHostGroupId;

  /// The ID of the host.
  late final pulumi.Output<String> dedicatedHostId;

  /// The instance type of the host. For more information about the supported instance types of hosts, see [Host specification details](https://www.alibabacloud.com/help/doc-detail/206343.htm).
  late final pulumi.Output<String> hostClass;

  /// The name of the host. The name must be `1` to `64` characters in length and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> hostName;

  /// Host Image Category. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  late final pulumi.Output<String?> imageCategory;

  /// Host password. **NOTE:** The creation of a host password is supported only when the database type is `Tair-PMem`.
  late final pulumi.Output<String?> osPassword;

  /// The payment type of the resource. Valid values: `Subscription`.
  late final pulumi.Output<String> paymentType;

  /// The unit of the subscription duration. Valid values: `Year`, `Month`, `Week`.
  late final pulumi.Output<String?> period;

  /// The state of the host. Valid values: `0:` The host is being created. `1`: The host is running. `2`: The host is faulty. `3`: The host is ready for deactivation. `4`: The host is being maintained. `5`: The host is deactivated. `6`: The host is restarting. `7`: The host is locked.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The subscription duration of the host. Valid values:
  /// * If the Period parameter is set to `Year`, the value of the UsedTime parameter ranges from `1` to `5`.
  /// * If the Period parameter is set to `Month`, the value of the UsedTime parameter ranges from `1` to `9`.
  /// * If the Period parameter is set to `Week`, the value of the UsedTime parameter ranges from `1`, `2` and `3`.
  late final pulumi.Output<int?> usedTime;

  /// The ID of the vSwitch to which the host is connected.
  late final pulumi.Output<String> vswitchId;

  /// The ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHost]. {@macro pulumi_cddc_dedicated_host_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHost(
    String name, {
    DedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cddc/dedicatedHost:DedicatedHost',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationStatus = registerOutput<String>('allocationStatus');
    autoRenew = registerOutput<bool?>('autoRenew');
    dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
    hostClass = registerOutput<String>('hostClass');
    hostName = registerOutput<String>('hostName');
    imageCategory = registerOutput<String?>('imageCategory');
    osPassword = registerOutput<String?>('osPassword');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    usedTime = registerOutput<int?>('usedTime');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DedicatedHost] resource's state with the given [name] and [id].
  static DedicatedHost get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostState? state,
  }) {
    return DedicatedHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cddc/dedicatedHost:DedicatedHost',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationStatus = registerOutput<String>('allocationStatus');
    autoRenew = registerOutput<bool?>('autoRenew');
    dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    dedicatedHostId = registerOutput<String>('dedicatedHostId');
    hostClass = registerOutput<String>('hostClass');
    hostName = registerOutput<String>('hostName');
    imageCategory = registerOutput<String?>('imageCategory');
    osPassword = registerOutput<String?>('osPassword');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    usedTime = registerOutput<int?>('usedTime');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
