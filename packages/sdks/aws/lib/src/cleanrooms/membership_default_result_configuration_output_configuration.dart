// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_default_result_configuration_output_configuration_s3.dart';

class MembershipDefaultResultConfigurationOutputConfiguration {
  final pulumi.Input<MembershipDefaultResultConfigurationOutputConfigurationS3> s3;

  /// Creates a new [MembershipDefaultResultConfigurationOutputConfiguration].
  /// [s3] Required.
  MembershipDefaultResultConfigurationOutputConfiguration({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': pulumi.Input.mapInputValue<MembershipDefaultResultConfigurationOutputConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory MembershipDefaultResultConfigurationOutputConfiguration.fromMap(Map<String, dynamic> map) {
    return MembershipDefaultResultConfigurationOutputConfiguration(
      s3: (MembershipDefaultResultConfigurationOutputConfigurationS3.fromMap((map['s3'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

