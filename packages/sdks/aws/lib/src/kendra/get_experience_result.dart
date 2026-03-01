// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experience_configuration.dart';
import 'get_experience_endpoint.dart';

/// Result data returned by getExperience.
class GetExperienceResult {
  /// ARN of the Experience.
  final String arn;
  /// Block that specifies the configuration information for your Amazon Kendra Experience. This includes `content_source_configuration`, which specifies the data source IDs and/or FAQ IDs, and `user_identity_configuration`, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below.
  final List<GetExperienceConfiguration> configurations;
  /// Unix datetime that the Experience was created.
  final String createdAt;
  /// Description of the Experience.
  final String description;
  /// Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below.
  final List<GetExperienceEndpoint> endpoints;
  /// Reason your Amazon Kendra Experience could not properly process.
  final String errorMessage;
  final String experienceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String indexId;
  /// Name of the Experience.
  final String name;
  final String region;
  /// Shows the ARN of a role with permission to access `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and AWS SSO that stores your user and group information.
  final String roleArn;
  /// Current processing status of your Amazon Kendra Experience. When the status is `ACTIVE`, your Amazon Kendra Experience is ready to use. When the status is `FAILED`, the `error_message` field contains the reason that this failed.
  final String status;
  /// Date and time that the Experience was last updated.
  final String updatedAt;

  /// Creates a new [GetExperienceResult].
  /// [arn] ARN of the Experience.
  /// [configurations] Block that specifies the configuration information for your Amazon Kendra Experience. This includes `content_source_configuration`, which specifies the data source IDs and/or FAQ IDs, and `user_identity_configuration`, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below.
  /// [createdAt] Unix datetime that the Experience was created.
  /// [description] Description of the Experience.
  /// [endpoints] Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below.
  /// [errorMessage] Reason your Amazon Kendra Experience could not properly process.
  /// [experienceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Required.
  /// [name] Name of the Experience.
  /// [region] Required.
  /// [roleArn] Shows the ARN of a role with permission to access `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and AWS SSO that stores your user and group information.
  /// [status] Current processing status of your Amazon Kendra Experience. When the status is `ACTIVE`, your Amazon Kendra Experience is ready to use. When the status is `FAILED`, the `error_message` field contains the reason that this failed.
  /// [updatedAt] Date and time that the Experience was last updated.
  GetExperienceResult({
    required this.arn,
    required this.configurations,
    required this.createdAt,
    required this.description,
    required this.endpoints,
    required this.errorMessage,
    required this.experienceId,
    required this.id,
    required this.indexId,
    required this.name,
    required this.region,
    required this.roleArn,
    required this.status,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'configurations': pulumi.Input.encodeList<GetExperienceConfiguration, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'createdAt': createdAt,
      'description': description,
      'endpoints': pulumi.Input.encodeList<GetExperienceEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'errorMessage': errorMessage,
      'experienceId': experienceId,
      'id': id,
      'indexId': indexId,
      'name': name,
      'region': region,
      'roleArn': roleArn,
      'status': status,
      'updatedAt': updatedAt,
    };
  }

  factory GetExperienceResult.fromMap(Map<String, dynamic> map) {
    return GetExperienceResult(
      arn: map['arn'] as String,
      configurations: pulumi.Input.decodeList<GetExperienceConfiguration>(map['configurations'], (value) => GetExperienceConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      endpoints: pulumi.Input.decodeList<GetExperienceEndpoint>(map['endpoints'], (value) => GetExperienceEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      errorMessage: map['errorMessage'] as String,
      experienceId: map['experienceId'] as String,
      id: map['id'] as String,
      indexId: map['indexId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

