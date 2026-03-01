import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_license_manage_big_iq_args.dart';

/// `f5bigip.CommonLicenseManageBigIq` This Resource is used for BIGIP/Provider License Management from BIGIQ
class CommonLicenseManageBigIq extends pulumi.CustomResource {
  /// The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  late final pulumi.Output<String> assignmentType;
  /// BIGIQ License Manager IP Address, variable type `string`
  late final pulumi.Output<String> bigiqAddress;
  /// BIGIQ Login reference for token authentication
  late final pulumi.Output<String?> bigiqLoginRef;
  /// BIGIQ License Manager password.  variable type `string`
  late final pulumi.Output<String> bigiqPassword;
  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  late final pulumi.Output<String?> bigiqPort;
  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  late final pulumi.Output<bool?> bigiqTokenAuth;
  /// BIGIQ License Manager username, variable type `string`
  late final pulumi.Output<String> bigiqUser;
  /// Status of Licence Assignment
  late final pulumi.Output<String> deviceLicenseStatus;
  /// Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  late final pulumi.Output<String?> hypervisor;
  /// License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  late final pulumi.Output<String?> key;
  /// A name given to the license pool. type `string`
  late final pulumi.Output<String> licensePoolname;
  /// MAC address of the BIG-IP. type `string`
  late final pulumi.Output<String?> macAddress;
  /// An optional offering name. type `string`
  late final pulumi.Output<String?> skukeyword1;
  /// An optional offering name. type `string`
  late final pulumi.Output<String?> skukeyword2;
  /// For an unreachable BIG-IP, you can provide an optional description for the assignment in this field.
  late final pulumi.Output<String?> tenant;
  /// The units used to measure billing. For example, “hourly” or “daily”. Type `string`
  late final pulumi.Output<String?> unitOfMeasure;

  /// Creates a new [CommonLicenseManageBigIq].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommonLicenseManageBigIq]. {@macro pulumi_index_common_license_manage_big_iq_common_license_manage_big_iq_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommonLicenseManageBigIq(
    String name, {
    CommonLicenseManageBigIqArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/commonLicenseManageBigIq:CommonLicenseManageBigIq',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignmentType = registerOutput<String>('assignmentType');
    this.bigiqAddress = registerOutput<String>('bigiqAddress');
    this.bigiqLoginRef = registerOutput<String?>('bigiqLoginRef');
    this.bigiqPassword = registerOutput<String>('bigiqPassword');
    this.bigiqPort = registerOutput<String?>('bigiqPort');
    this.bigiqTokenAuth = registerOutput<bool?>('bigiqTokenAuth');
    this.bigiqUser = registerOutput<String>('bigiqUser');
    this.deviceLicenseStatus = registerOutput<String>('deviceLicenseStatus');
    this.hypervisor = registerOutput<String?>('hypervisor');
    this.key = registerOutput<String?>('key');
    this.licensePoolname = registerOutput<String>('licensePoolname');
    this.macAddress = registerOutput<String?>('macAddress');
    this.skukeyword1 = registerOutput<String?>('skukeyword1');
    this.skukeyword2 = registerOutput<String?>('skukeyword2');
    this.tenant = registerOutput<String?>('tenant');
    this.unitOfMeasure = registerOutput<String?>('unitOfMeasure');
  }
}
