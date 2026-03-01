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
    pulumi.Output<OrganizationConfigurationAutoEnable>? autoEnable,
    pulumi.Output<bool>? maxAccountLimitReached,
    pulumi.Output<String>? region,
  }) :
      autoEnable = pulumi.Input.asOptionalInput<OrganizationConfigurationAutoEnable>(autoEnable),
      maxAccountLimitReached = pulumi.Input.asOptionalInput<bool>(maxAccountLimitReached),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationAutoEnable, Map<String, dynamic>>(autoEnable, (value) => value.toMap()),
      'maxAccountLimitReached': ?maxAccountLimitReached,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnable: map['autoEnable'] == null ? null : pulumi.Output.create<OrganizationConfigurationAutoEnable>(OrganizationConfigurationAutoEnable.fromMap((map['autoEnable'] as Map).cast<String, dynamic>())),
      maxAccountLimitReached: map['maxAccountLimitReached'] == null ? null : pulumi.Output.create<bool>(map['maxAccountLimitReached'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

