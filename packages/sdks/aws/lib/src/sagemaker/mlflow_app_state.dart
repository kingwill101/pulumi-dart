// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_app_timeouts.dart';

/// Input properties used for looking up and filtering MlflowApp resources.
class MlflowAppState {
  /// Indicates whether this MLflow app is the default for the entire account. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? accountDefaultStatus;
  /// Amazon Resource Name (ARN) of the MLflow App.
  final pulumi.Input<String>? arn;
  /// S3 URI for a general purpose bucket to use as the MLflow App artifact store.
  final pulumi.Input<String>? artifactStoreUri;
  /// List of SageMaker domain IDs for which this MLflow App is used as the default.
  final pulumi.Input<List<String>>? defaultDomainIdLists;
  /// Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry. Valid values are `AutoModelRegistrationEnabled` and `AutoModelRegistrationDisabled`. Defaults to `AutoModelRegistrationDisabled`.
  final pulumi.Input<String>? modelRegistrationMode;
  /// MLflow app name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) for an IAM role in your account that the MLflow App uses to access the artifact store in Amazon S3.
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<MlflowAppTimeouts>? timeouts;
  /// Day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: `SUN:03:00`.
  final pulumi.Input<String>? weeklyMaintenanceWindowStart;

  /// Creates a new [MlflowAppState].
  /// [accountDefaultStatus] Indicates whether this MLflow app is the default for the entire account. Valid values are `ENABLED` and `DISABLED`.
  /// [arn] Amazon Resource Name (ARN) of the MLflow App.
  /// [artifactStoreUri] S3 URI for a general purpose bucket to use as the MLflow App artifact store.
  /// [defaultDomainIdLists] List of SageMaker domain IDs for which this MLflow App is used as the default.
  /// [modelRegistrationMode] Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry. Valid values are `AutoModelRegistrationEnabled` and `AutoModelRegistrationDisabled`. Defaults to `AutoModelRegistrationDisabled`.
  /// [name] MLflow app name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) for an IAM role in your account that the MLflow App uses to access the artifact store in Amazon S3.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [weeklyMaintenanceWindowStart] Day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: `SUN:03:00`.
  const MlflowAppState({
    this.accountDefaultStatus,
    this.arn,
    this.artifactStoreUri,
    this.defaultDomainIdLists,
    this.modelRegistrationMode,
    this.name,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.weeklyMaintenanceWindowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountDefaultStatus': ?accountDefaultStatus,
      'arn': ?arn,
      'artifactStoreUri': ?artifactStoreUri,
      'defaultDomainIdLists': ?defaultDomainIdLists,
      'modelRegistrationMode': ?modelRegistrationMode,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MlflowAppTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'weeklyMaintenanceWindowStart': ?weeklyMaintenanceWindowStart,
    };
  }

  factory MlflowAppState.fromMap(Map<String, dynamic> map) {
    return MlflowAppState(
      accountDefaultStatus: (() { final guardedValue = map['accountDefaultStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStoreUri: (() { final guardedValue = map['artifactStoreUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDomainIdLists: (() { final guardedValue = map['defaultDomainIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      modelRegistrationMode: (() { final guardedValue = map['modelRegistrationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MlflowAppTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklyMaintenanceWindowStart: (() { final guardedValue = map['weeklyMaintenanceWindowStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
