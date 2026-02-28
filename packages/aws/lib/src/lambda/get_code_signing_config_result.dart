// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_code_signing_config_allowed_publisher.dart';
import 'get_code_signing_config_policy.dart';

/// Result data returned by getCodeSigningConfig.
class GetCodeSigningConfigResult {
  /// List of allowed publishers as signing profiles for this code signing configuration. See below.
  final List<GetCodeSigningConfigAllowedPublisher> allowedPublishers;
  final String arn;

  /// Unique identifier for the code signing configuration.
  final String configId;

  /// Code signing configuration description.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Date and time that the code signing configuration was last modified.
  final String lastModified;

  /// List of code signing policies that control the validation failure action for signature mismatch or expiry. See below.
  final List<GetCodeSigningConfigPolicy> policies;
  final String region;

  /// Creates a new [GetCodeSigningConfigResult].
  /// [allowedPublishers] List of allowed publishers as signing profiles for this code signing configuration. See below.
  /// [arn] Required.
  /// [configId] Unique identifier for the code signing configuration.
  /// [description] Code signing configuration description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Date and time that the code signing configuration was last modified.
  /// [policies] List of code signing policies that control the validation failure action for signature mismatch or expiry. See below.
  /// [region] Required.
  GetCodeSigningConfigResult({
    required this.allowedPublishers,
    required this.arn,
    required this.configId,
    required this.description,
    required this.id,
    required this.lastModified,
    required this.policies,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedPublishers'] = pulumi.Input.encodeList<
        GetCodeSigningConfigAllowedPublisher,
        Map<String, dynamic>>(allowedPublishers, (value) => value.toMap());
    map['arn'] = arn;
    map['configId'] = configId;
    map['description'] = description;
    map['id'] = id;
    map['lastModified'] = lastModified;
    map['policies'] = pulumi.Input.encodeList<GetCodeSigningConfigPolicy,
        Map<String, dynamic>>(policies, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetCodeSigningConfigResult.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigResult(
      allowedPublishers:
          pulumi.Input.decodeList<GetCodeSigningConfigAllowedPublisher>(
              map['allowedPublishers'],
              (value) => GetCodeSigningConfigAllowedPublisher.fromMap(
                  (value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      configId: map['configId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      policies: pulumi.Input.decodeList<GetCodeSigningConfigPolicy>(
          map['policies'],
          (value) => GetCodeSigningConfigPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
