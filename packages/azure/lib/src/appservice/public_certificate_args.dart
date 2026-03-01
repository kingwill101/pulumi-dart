// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_public_certificate_public_certificate_args_doc}
/// The set of arguments for PublicCertificate.
/// {@endtemplate}
/// {@macro pulumi_appservice_public_certificate_public_certificate_args_doc}
class PublicCertificateArgs {
  /// The name of the App Service. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String> appServiceName;
  /// The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String> blob;
  /// The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String> certificateLocation;
  /// The name of the public certificate. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String> certificateName;
  /// The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PublicCertificateArgs].
  /// [appServiceName] The name of the App Service. Changing this forces a new App Service Public Certificate to be created.
  /// [blob] The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created.
  /// [certificateLocation] The location of the certificate. Possible values are `CurrentUserMy`, `LocalMachineMy` and `Unknown`. Changing this forces a new App Service Public Certificate to be created.
  /// [certificateName] The name of the public certificate. Changing this forces a new App Service Public Certificate to be created.
  /// [resourceGroupName] The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created.
  PublicCertificateArgs({
    required String appServiceName,
    required String blob,
    required String certificateLocation,
    required String certificateName,
    required String resourceGroupName,
  }) :
      appServiceName = pulumi.Input.asInput<String>(appServiceName),
      blob = pulumi.Input.asInput<String>(blob),
      certificateLocation = pulumi.Input.asInput<String>(certificateLocation),
      certificateName = pulumi.Input.asInput<String>(certificateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'blob': blob,
      'certificateLocation': certificateLocation,
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PublicCertificateArgs.fromMap(Map<String, dynamic> map) {
    return PublicCertificateArgs(
      appServiceName: map['appServiceName'] as String,
      blob: map['blob'] as String,
      certificateLocation: map['certificateLocation'] as String,
      certificateName: map['certificateName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

