import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_propre_host_args.dart';
import 'dedicated_propre_host_state.dart';

/// ## Import
///
/// CDDC Dedicated Propre Host can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cddc/dedicatedPropreHost:DedicatedPropreHost example <dedicated_host_group_id>:<ecs_instance_id>
/// ```
class DedicatedPropreHost extends pulumi.CustomResource {
  /// Whether to pay automatically when the host is created.
  late final pulumi.Output<bool?> autoPay;
  /// Whether to enable automatic renewal. Valid values:
  /// - **true**: On
  /// - **false** (default): Off
  late final pulumi.Output<String?> autoRenew;
  /// You have a dedicated cluster ID.
  late final pulumi.Output<String> dedicatedHostGroupId;
  /// ECS specifications. See `ecs_class_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>> ecsClassLists;
  /// The ID of the cloud server deployment set.
  late final pulumi.Output<String?> ecsDeploymentSetId;
  /// Windows system: length of 2 to 15 characters, allowing the use of upper and lower case letters, numbers. You cannot use only numbers. Other operating systems (such as Linux): the length of 2 to 64 characters, allowing the use of dot (.) to separate characters into multiple segments, each segment allows the use of upper and lower case letters, numbers, but can not use continuous dot (.). Cannot start or end with a dot (.).
  late final pulumi.Output<String?> ecsHostName;
  /// ECS instance ID.
  late final pulumi.Output<String> ecsInstanceId;
  /// The instance name. It must be 2 to 128 characters in length and must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https. Can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-). The default value is the InstanceId of the instance.
  late final pulumi.Output<String?> ecsInstanceName;
  /// Whether to automatically add an ordered suffix for HostName and InstanceName when creating multiple instances. The ordered suffix starts from 001 and cannot exceed 999. Value Description:
  /// - **true**: added.
  /// - **false** (default): Do not add.
  /// When the HostName or InstanceName is set according to the specified sorting format, and the naming suffix name_suffix is not set, that is, when the naming format is name_prefix[begin_number,bits], the UniqueSuffix does not take effect, and the names are only sorted according to the specified order.
  late final pulumi.Output<String?> ecsUniqueSuffix;
  /// The ID of the zone.
  late final pulumi.Output<String> ecsZoneId;
  /// Database type, value:
  /// - **alisql**
  /// - **tair**
  /// - **mssql**
  /// Must be consistent with the parent resource cluster engine attributes.
  late final pulumi.Output<String> engine;
  /// The ID of the custom image.
  /// &gt; **NOTE:**  If you need to use the default image, you do not need to fill it in.
  late final pulumi.Output<String?> imageId;
  /// Network billing type. Value range: PayByBandwidth: Billing based on fixed bandwidth. PayByTraffic: charges by using the flow meter.
  late final pulumi.Output<String?> internetChargeType;
  /// The maximum outbound bandwidth of the public network, in Mbit/s. Value range: 0~100.  Default value: 0. When set to greater than 0, a public IP is automatically created.
  late final pulumi.Output<int?> internetMaxBandwidthOut;
  /// The key pair name.
  late final pulumi.Output<String?> keyPairName;
  /// Host login password, which can be set later. The password must meet the following requirements:
  /// - Length is 8~30 characters.
  /// - Must contain at least three items: uppercase letters, lowercase letters, numbers, and special characters.
  /// - Special symbol '()\' ~! @#$%^& *-_+ =|{}[]:;',.? /'
  /// &gt; **NOTE:** - If you need to set the host login password later, fill in an empty string for this parameter. If you need to set a host login password, we recommend that you use the HTTPS protocol to send requests to avoid password leakage.
  late final pulumi.Output<String?> osPassword;
  /// Whether to use the default password of the image.
  /// - **false**: (default)Do not use
  /// - **true**: Use
  /// &gt; **NOTE:**  If the default password of the image is used, the **OSPassword** parameter is not required.
  late final pulumi.Output<String?> passwordInherit;
  /// The Payment type. Currently, only **Subscription** is supported.
  late final pulumi.Output<String> paymentType;
  /// Duration of purchase.
  late final pulumi.Output<String?> period;
  /// The subscription type. Currently, only **Monthly** (subscription) is supported.
  late final pulumi.Output<String?> periodType;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;
  /// Host tag information.
  late final pulumi.Output<Map<String, String>?> tags;
  /// User-defined script data. The maximum size of the original data is 16kB.
  late final pulumi.Output<String?> userData;
  /// Whether custom data is encoded in Base64 format.
  late final pulumi.Output<bool?> userDataEncoded;
  /// VPCID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The ID of the virtual switch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [DedicatedPropreHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedPropreHost]. {@macro pulumi_cddc_dedicated_propre_host_dedicated_propre_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedPropreHost(
    String name, {
    DedicatedPropreHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cddc/dedicatedPropreHost:DedicatedPropreHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<String?>('autoRenew');
    dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    ecsClassLists = registerOutput<List<Map<String, dynamic>>>('ecsClassLists');
    ecsDeploymentSetId = registerOutput<String?>('ecsDeploymentSetId');
    ecsHostName = registerOutput<String?>('ecsHostName');
    ecsInstanceId = registerOutput<String>('ecsInstanceId');
    ecsInstanceName = registerOutput<String?>('ecsInstanceName');
    ecsUniqueSuffix = registerOutput<String?>('ecsUniqueSuffix');
    ecsZoneId = registerOutput<String>('ecsZoneId');
    engine = registerOutput<String>('engine');
    imageId = registerOutput<String?>('imageId');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    keyPairName = registerOutput<String?>('keyPairName');
    osPassword = registerOutput<String?>('osPassword');
    passwordInherit = registerOutput<String?>('passwordInherit');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    periodType = registerOutput<String?>('periodType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupId = registerOutput<String>('securityGroupId');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
    userDataEncoded = registerOutput<bool?>('userDataEncoded');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [DedicatedPropreHost] resource's state with the given [name] and [id].
  static DedicatedPropreHost get(
    String name,
    pulumi.Input<String> id, {
    DedicatedPropreHostState? state,
  }) {
    return DedicatedPropreHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedPropreHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cddc/dedicatedPropreHost:DedicatedPropreHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<String?>('autoRenew');
    dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    ecsClassLists = registerOutput<List<Map<String, dynamic>>>('ecsClassLists');
    ecsDeploymentSetId = registerOutput<String?>('ecsDeploymentSetId');
    ecsHostName = registerOutput<String?>('ecsHostName');
    ecsInstanceId = registerOutput<String>('ecsInstanceId');
    ecsInstanceName = registerOutput<String?>('ecsInstanceName');
    ecsUniqueSuffix = registerOutput<String?>('ecsUniqueSuffix');
    ecsZoneId = registerOutput<String>('ecsZoneId');
    engine = registerOutput<String>('engine');
    imageId = registerOutput<String?>('imageId');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    keyPairName = registerOutput<String?>('keyPairName');
    osPassword = registerOutput<String?>('osPassword');
    passwordInherit = registerOutput<String?>('passwordInherit');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    periodType = registerOutput<String?>('periodType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupId = registerOutput<String>('securityGroupId');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
    userDataEncoded = registerOutput<bool?>('userDataEncoded');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
