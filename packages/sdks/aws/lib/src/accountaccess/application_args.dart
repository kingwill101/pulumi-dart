// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_identity_source.dart';
import 'application_timeouts.dart';

/// {@template pulumi_accountaccess_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_accountaccess_application_application_args_doc}
class ApplicationArgs {
  /// Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ApplicationIdentitySource> identitySource;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the Application. If configured with a provider `defaultTags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ApplicationTimeouts?>? timeouts;

  /// Creates a new [ApplicationArgs].
  /// [identitySource] Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Application. If configured with a provider `defaultTags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ApplicationArgs({
    required this.identitySource,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identitySource': pulumi.Input.mapInputValue<ApplicationIdentitySource, Map<String, dynamic>>(identitySource, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      identitySource: pulumi.Input.fromValue(ApplicationIdentitySource.fromMap((map['identitySource']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
