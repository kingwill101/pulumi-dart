// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_common_license_manage_big_iq_common_license_manage_big_iq_args_doc}
/// The set of arguments for CommonLicenseManageBigIq.
/// {@endtemplate}
/// {@macro pulumi_index_common_license_manage_big_iq_common_license_manage_big_iq_args_doc}
class CommonLicenseManageBigIqArgs {
  /// The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  final pulumi.Input<String> assignmentType;
  /// BIGIQ License Manager IP Address, variable type `string`
  final pulumi.Input<String> bigiqAddress;
  /// BIGIQ Login reference for token authentication
  final pulumi.Input<String>? bigiqLoginRef;
  /// BIGIQ License Manager password.  variable type `string`
  final pulumi.Input<String> bigiqPassword;
  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  final pulumi.Input<String>? bigiqPort;
  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  final pulumi.Input<bool>? bigiqTokenAuth;
  /// BIGIQ License Manager username, variable type `string`
  final pulumi.Input<String> bigiqUser;
  /// Status of Licence Assignment
  final pulumi.Input<String>? deviceLicenseStatus;
  /// Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  final pulumi.Input<String>? hypervisor;
  /// License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  final pulumi.Input<String>? key;
  /// A name given to the license pool. type `string`
  final pulumi.Input<String> licensePoolname;
  /// MAC address of the BIG-IP. type `string`
  final pulumi.Input<String>? macAddress;
  /// An optional offering name. type `string`
  final pulumi.Input<String>? skukeyword1;
  /// An optional offering name. type `string`
  final pulumi.Input<String>? skukeyword2;
  /// For an unreachable BIG-IP, you can provide an optional description for the assignment in this field.
  final pulumi.Input<String>? tenant;
  /// The units used to measure billing. For example, “hourly” or “daily”. Type `string`
  final pulumi.Input<String>? unitOfMeasure;

  /// Creates a new [CommonLicenseManageBigIqArgs].
  /// [assignmentType] The type of assignment, which is determined by whether the BIG-IP is unreachable, unmanaged, or managed by BIG-IQ. Possible values: “UNREACHABLE”, “UNMANAGED”, or “MANAGED”.
  /// [bigiqAddress] BIGIQ License Manager IP Address, variable type `string`
  /// [bigiqLoginRef] BIGIQ Login reference for token authentication
  /// [bigiqPassword] BIGIQ License Manager password.  variable type `string`
  /// [bigiqPort] type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  /// [bigiqTokenAuth] type `bool`, if set to `true` enables Token based Authentication,default is `false`
  /// [bigiqUser] BIGIQ License Manager username, variable type `string`
  /// [deviceLicenseStatus] Status of Licence Assignment
  /// [hypervisor] Identifies the platform running the BIG-IP VE. Possible values: “aws”, “azure”, “gce”, “vmware”, “hyperv”, “kvm”, or “xen”. type `string`
  /// [key] License Assignment is done with specified `key`, supported only with RegKeypool type License assignement. type `string`
  /// [licensePoolname] A name given to the license pool. type `string`
  /// [macAddress] MAC address of the BIG-IP. type `string`
  /// [skukeyword1] An optional offering name. type `string`
  /// [skukeyword2] An optional offering name. type `string`
  /// [tenant] For an unreachable BIG-IP, you can provide an optional description for the assignment in this field.
  /// [unitOfMeasure] The units used to measure billing. For example, “hourly” or “daily”. Type `string`
  CommonLicenseManageBigIqArgs({
    required String assignmentType,
    required String bigiqAddress,
    String? bigiqLoginRef,
    required String bigiqPassword,
    String? bigiqPort,
    bool? bigiqTokenAuth,
    required String bigiqUser,
    String? deviceLicenseStatus,
    String? hypervisor,
    String? key,
    required String licensePoolname,
    String? macAddress,
    String? skukeyword1,
    String? skukeyword2,
    String? tenant,
    String? unitOfMeasure,
  }) :
      assignmentType = pulumi.Input.asInput<String>(assignmentType),
      bigiqAddress = pulumi.Input.asInput<String>(bigiqAddress),
      bigiqLoginRef = pulumi.Input.asOptionalInput<String>(bigiqLoginRef),
      bigiqPassword = pulumi.Input.asInput<String>(bigiqPassword),
      bigiqPort = pulumi.Input.asOptionalInput<String>(bigiqPort),
      bigiqTokenAuth = pulumi.Input.asOptionalInput<bool>(bigiqTokenAuth),
      bigiqUser = pulumi.Input.asInput<String>(bigiqUser),
      deviceLicenseStatus = pulumi.Input.asOptionalInput<String>(deviceLicenseStatus),
      hypervisor = pulumi.Input.asOptionalInput<String>(hypervisor),
      key = pulumi.Input.asOptionalInput<String>(key),
      licensePoolname = pulumi.Input.asInput<String>(licensePoolname),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      skukeyword1 = pulumi.Input.asOptionalInput<String>(skukeyword1),
      skukeyword2 = pulumi.Input.asOptionalInput<String>(skukeyword2),
      tenant = pulumi.Input.asOptionalInput<String>(tenant),
      unitOfMeasure = pulumi.Input.asOptionalInput<String>(unitOfMeasure);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': assignmentType,
      'bigiqAddress': bigiqAddress,
      'bigiqLoginRef': ?bigiqLoginRef,
      'bigiqPassword': bigiqPassword,
      'bigiqPort': ?bigiqPort,
      'bigiqTokenAuth': ?bigiqTokenAuth,
      'bigiqUser': bigiqUser,
      'deviceLicenseStatus': ?deviceLicenseStatus,
      'hypervisor': ?hypervisor,
      'key': ?key,
      'licensePoolname': licensePoolname,
      'macAddress': ?macAddress,
      'skukeyword1': ?skukeyword1,
      'skukeyword2': ?skukeyword2,
      'tenant': ?tenant,
      'unitOfMeasure': ?unitOfMeasure,
    };
  }

  factory CommonLicenseManageBigIqArgs.fromMap(Map<String, dynamic> map) {
    return CommonLicenseManageBigIqArgs(
      assignmentType: map['assignmentType'] as String,
      bigiqAddress: map['bigiqAddress'] as String,
      bigiqLoginRef: map['bigiqLoginRef'] == null ? null : map['bigiqLoginRef'] as String,
      bigiqPassword: map['bigiqPassword'] as String,
      bigiqPort: map['bigiqPort'] == null ? null : map['bigiqPort'] as String,
      bigiqTokenAuth: map['bigiqTokenAuth'] == null ? null : map['bigiqTokenAuth'] as bool,
      bigiqUser: map['bigiqUser'] as String,
      deviceLicenseStatus: map['deviceLicenseStatus'] == null ? null : map['deviceLicenseStatus'] as String,
      hypervisor: map['hypervisor'] == null ? null : map['hypervisor'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      licensePoolname: map['licensePoolname'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      skukeyword1: map['skukeyword1'] == null ? null : map['skukeyword1'] as String,
      skukeyword2: map['skukeyword2'] == null ? null : map['skukeyword2'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
      unitOfMeasure: map['unitOfMeasure'] == null ? null : map['unitOfMeasure'] as String,
    );
  }
}

