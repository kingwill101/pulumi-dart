// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_auto_enable.dart';

/// Input properties used for looking up and filtering OrganizationConfiguration resources.
class OrganizationConfigurationState {
  /// Configuration block for auto enabling. See below.
  final pulumi.Input<OrganizationConfigurationAutoEnable>? autoEnable;

  /// Whether your configuration reached the max account limit.
  final pulumi.Input<bool>? maxAccountLimitReached;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationState].
  /// [autoEnable] Configuration block for auto enabling. See below.
  /// [maxAccountLimitReached] Whether your configuration reached the max account limit.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationState({
    this.autoEnable,
    this.maxAccountLimitReached,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationConfigurationAutoEnable,
            Map<String, dynamic>
          >(autoEnable, (value) => value.toMap()),
      'maxAccountLimitReached': ?maxAccountLimitReached,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnable: (() {
        final guardedValue = map['autoEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationConfigurationAutoEnable.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxAccountLimitReached: (() {
        final guardedValue = map['maxAccountLimitReached'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
