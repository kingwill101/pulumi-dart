// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_custom_certificate_args_doc}
/// Arguments for getWebPubSubCustomCertificate.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_custom_certificate_args_doc}
class GetWebPubSubCustomCertificateArgs {
  /// Custom certificate name
  final pulumi.Input<String> certificateName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubCustomCertificateArgs].
  /// [certificateName] Custom certificate name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetWebPubSubCustomCertificateArgs({
    required String certificateName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubCustomCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubCustomCertificateArgs(
      certificateName: map['certificateName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

