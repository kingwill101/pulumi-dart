// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_approver_definition.dart';

/// Managed application Jit access policy.
class ApplicationJitAccessPolicy {
  /// Whether the JIT access is enabled.
  final bool jitAccessEnabled;
  /// JIT approval mode.
  final String? jitApprovalMode;
  /// The JIT approvers
  final List<JitApproverDefinition>? jitApprovers;
  /// The maximum duration JIT access is granted. This is an ISO8601 time period value.
  final String? maximumJitAccessDuration;

  /// Creates a new [ApplicationJitAccessPolicy].
  /// [jitAccessEnabled] Whether the JIT access is enabled.
  /// [jitApprovalMode] JIT approval mode.
  /// [jitApprovers] The JIT approvers
  /// [maximumJitAccessDuration] The maximum duration JIT access is granted. This is an ISO8601 time period value.
  ApplicationJitAccessPolicy({
    required this.jitAccessEnabled,
    this.jitApprovalMode,
    this.jitApprovers,
    this.maximumJitAccessDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jitAccessEnabled': jitAccessEnabled,
      'jitApprovalMode': ?jitApprovalMode,
      'jitApprovers': ?jitApprovers == null ? null : pulumi.Input.encodeList<JitApproverDefinition, Map<String, dynamic>>(jitApprovers!, (value) => value.toMap()),
      'maximumJitAccessDuration': ?maximumJitAccessDuration,
    };
  }

  factory ApplicationJitAccessPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationJitAccessPolicy(
      jitAccessEnabled: map['jitAccessEnabled'] as bool,
      jitApprovalMode: map['jitApprovalMode'] == null ? null : map['jitApprovalMode'] as String,
      jitApprovers: map['jitApprovers'] == null ? null : pulumi.Input.decodeList<JitApproverDefinition>(map['jitApprovers'], (value) => JitApproverDefinition.fromMap((value as Map).cast<String, dynamic>())),
      maximumJitAccessDuration: map['maximumJitAccessDuration'] == null ? null : map['maximumJitAccessDuration'] as String,
    );
  }
}

