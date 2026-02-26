// ignore_for_file: unused_element, unnecessary_cast

import '../membership_default_result_configuration_output_configuration_s3/membership_default_result_configuration_output_configuration_s3.dart';

class MembershipDefaultResultConfigurationOutputConfiguration {
  final MembershipDefaultResultConfigurationOutputConfigurationS3 s3;

  MembershipDefaultResultConfigurationOutputConfiguration({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3'] = s3.toMap();
    return map;
  }

  factory MembershipDefaultResultConfigurationOutputConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MembershipDefaultResultConfigurationOutputConfiguration(
      s3: MembershipDefaultResultConfigurationOutputConfigurationS3.fromMap(
          (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
