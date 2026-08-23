// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_enterprise_policy_location_s3.dart';

class AgentcoreBrowserEnterprisePolicyLocation {
  /// S3 location of the enterprise policy file. See `s3` below.
  final pulumi.Input<AgentcoreBrowserEnterprisePolicyLocationS3>? s3;

  /// Creates a new [AgentcoreBrowserEnterprisePolicyLocation].
  /// [s3] S3 location of the enterprise policy file. See `s3` below.
  const AgentcoreBrowserEnterprisePolicyLocation({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserEnterprisePolicyLocationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserEnterprisePolicyLocation.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserEnterprisePolicyLocation(
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserEnterprisePolicyLocationS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
