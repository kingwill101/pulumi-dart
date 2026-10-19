// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identity_source.dart';
import 'application_timeouts.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// ARN of the Application. Used as the resource ID.
  final pulumi.Input<String?>? arn;
  /// Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ApplicationIdentitySource?>? identitySource;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the Application. If configured with a provider `defaultTags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the Application, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Internal tenant identifier returned by the service.
  final pulumi.Input<String?>? tenantId;
  final pulumi.Input<ApplicationTimeouts?>? timeouts;

  /// Creates a new [ApplicationState].
  /// [arn] ARN of the Application. Used as the resource ID.
  /// [identitySource] Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Application. If configured with a provider `defaultTags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the Application, including those inherited from the provider `defaultTags` configuration block.
  /// [tenantId] Internal tenant identifier returned by the service.
  /// [timeouts] Optional.
  const ApplicationState({
    this.arn,
    this.identitySource,
    this.region,
    this.tags,
    this.tagsAll,
    this.tenantId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'identitySource': ?pulumi.Input.mapOptionalInputValue<ApplicationIdentitySource, Map<String, dynamic>>(identitySource, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenantId': ?tenantId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identitySource: (() { final guardedValue = map['identitySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationIdentitySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
