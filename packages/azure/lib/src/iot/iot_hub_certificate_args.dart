// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_iot_hub_certificate_iot_hub_certificate_args_doc}
/// The set of arguments for IotHubCertificate.
/// {@endtemplate}
/// {@macro pulumi_iot_iot_hub_certificate_iot_hub_certificate_args_doc}
class IotHubCertificateArgs {
  /// The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  final pulumi.Input<String> certificateContent;
  /// The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created.
  final pulumi.Input<String> iotDpsName;
  /// Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? isVerified;
  /// Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IotHubCertificateArgs].
  /// [certificateContent] The Base-64 representation of the X509 leaf certificate .cer file or just a .pem file content.
  /// [iotDpsName] The name of the IoT Device Provisioning Service that this certificate will be attached to. Changing this forces a new resource to be created.
  /// [isVerified] Specifies if the certificate is created in verified state. Defaults to `false`. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Iot Device Provisioning Service Certificate resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Iot Device Provisioning Service Certificate resource has to be created. Changing this forces a new resource to be created.
  IotHubCertificateArgs({
    required String certificateContent,
    required String iotDpsName,
    bool? isVerified,
    String? name,
    required String resourceGroupName,
  }) :
      certificateContent = pulumi.Input.asInput<String>(certificateContent),
      iotDpsName = pulumi.Input.asInput<String>(iotDpsName),
      isVerified = pulumi.Input.asOptionalInput<bool>(isVerified),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateContent': certificateContent,
      'iotDpsName': iotDpsName,
      'isVerified': ?isVerified,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IotHubCertificateArgs.fromMap(Map<String, dynamic> map) {
    return IotHubCertificateArgs(
      certificateContent: map['certificateContent'] as String,
      iotDpsName: map['iotDpsName'] as String,
      isVerified: map['isVerified'] == null ? null : map['isVerified'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

