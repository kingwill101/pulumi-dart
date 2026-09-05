// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Creation date of the deployment
  final pulumi.Input<String?>? createdDate;
  /// Description of the deployment.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// REST API identifier.
  final pulumi.Input<dynamic>? restApi;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  final pulumi.Input<Map<String, String>?>? triggers;
  /// Map to set on the related stage.
  final pulumi.Input<Map<String, String>?>? variables;

  /// Creates a new [DeploymentState].
  /// [createdDate] Creation date of the deployment
  /// [description] Description of the deployment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] REST API identifier.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  /// [variables] Map to set on the related stage.
  const DeploymentState({
    this.createdDate,
    this.description,
    this.region,
    this.restApi,
    this.triggers,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': ?createdDate,
      'description': ?description,
      'region': ?region,
      'restApi': ?restApi,
      'triggers': ?triggers,
      'variables': ?variables,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: (() { final guardedValue = map['restApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
