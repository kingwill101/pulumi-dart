// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experience_configuration.dart';
import 'get_experience_endpoint.dart';

/// Result data returned by getExperience.
class GetExperienceResult {
  /// ARN of the Experience.
  final String? arn;
  /// Block that specifies the configuration information for your Amazon Kendra Experience. This includes `contentSourceConfiguration`, which specifies the data source IDs and/or FAQ IDs, and `userIdentityConfiguration`, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below.
  final List<GetExperienceConfiguration>? configurations;
  /// Unix datetime that the Experience was created.
  final String? createdAt;
  /// Description of the Experience.
  final String? description;
  /// Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below.
  final List<GetExperienceEndpoint>? endpoints;
  /// Reason your Amazon Kendra Experience could not properly process.
  final String? errorMessage;
  final String? experienceId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? indexId;
  /// Name of the Experience.
  final String? name;
  final String? region;
  /// Shows the ARN of a role with permission to access `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and AWS SSO that stores your user and group information.
  final String? roleArn;
  /// Current processing status of your Amazon Kendra Experience. When the status is `ACTIVE`, your Amazon Kendra Experience is ready to use. When the status is `FAILED`, the `errorMessage` field contains the reason that this failed.
  final String? status;
  /// Date and time that the Experience was last updated.
  final String? updatedAt;

  /// Creates a new [GetExperienceResult].
  /// [arn] ARN of the Experience.
  /// [configurations] Block that specifies the configuration information for your Amazon Kendra Experience. This includes `contentSourceConfiguration`, which specifies the data source IDs and/or FAQ IDs, and `userIdentityConfiguration`, which specifies the user or group information to grant access to your Amazon Kendra Experience. Documented below.
  /// [createdAt] Unix datetime that the Experience was created.
  /// [description] Description of the Experience.
  /// [endpoints] Shows the endpoint URLs for your Amazon Kendra Experiences. The URLs are unique and fully hosted by AWS. Documented below.
  /// [errorMessage] Reason your Amazon Kendra Experience could not properly process.
  /// [experienceId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Optional.
  /// [name] Name of the Experience.
  /// [region] Optional.
  /// [roleArn] Shows the ARN of a role with permission to access `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and AWS SSO that stores your user and group information.
  /// [status] Current processing status of your Amazon Kendra Experience. When the status is `ACTIVE`, your Amazon Kendra Experience is ready to use. When the status is `FAILED`, the `errorMessage` field contains the reason that this failed.
  /// [updatedAt] Date and time that the Experience was last updated.
  const GetExperienceResult({
    this.arn,
    this.configurations,
    this.createdAt,
    this.description,
    this.endpoints,
    this.errorMessage,
    this.experienceId,
    this.id,
    this.indexId,
    this.name,
    this.region,
    this.roleArn,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurations': ?(() { final guardedValue = configurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExperienceConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'description': ?description,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExperienceEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'errorMessage': ?errorMessage,
      'experienceId': ?experienceId,
      'id': ?id,
      'indexId': ?indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetExperienceResult.fromMap(Map<String, dynamic> map) {
    return GetExperienceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExperienceConfiguration>(guardedValue, (value) => GetExperienceConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExperienceEndpoint>(guardedValue, (value) => GetExperienceEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      experienceId: (() { final guardedValue = map['experienceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
