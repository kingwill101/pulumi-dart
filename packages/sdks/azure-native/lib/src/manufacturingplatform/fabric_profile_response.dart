// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Fabric
class FabricProfileResponse {
  /// Azure Key Vault Uri
  final pulumi.Input<String> keyUri;
  /// One Lake Path
  final pulumi.Input<String> oneLakePath;
  /// URI of One Lake
  final pulumi.Input<String> oneLakeUri;

  /// Creates a new [FabricProfileResponse].
  /// [keyUri] Azure Key Vault Uri
  /// [oneLakePath] One Lake Path
  /// [oneLakeUri] URI of One Lake
  FabricProfileResponse({
    required this.keyUri,
    required this.oneLakePath,
    required this.oneLakeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': keyUri,
      'oneLakePath': oneLakePath,
      'oneLakeUri': oneLakeUri,
    };
  }

  factory FabricProfileResponse.fromMap(Map<String, dynamic> map) {
    return FabricProfileResponse(
      keyUri: (map['keyUri'] as String).input(),
      oneLakePath: (map['oneLakePath'] as String).input(),
      oneLakeUri: (map['oneLakeUri'] as String).input(),
    );
  }
}

