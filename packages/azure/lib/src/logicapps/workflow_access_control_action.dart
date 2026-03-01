// ignore_for_file: unused_element, unnecessary_cast


class WorkflowAccessControlAction {
  /// A list of the allowed caller IP address ranges.
  final List<String> allowedCallerIpAddressRanges;

  /// Creates a new [WorkflowAccessControlAction].
  /// [allowedCallerIpAddressRanges] A list of the allowed caller IP address ranges.
  WorkflowAccessControlAction({
    required this.allowedCallerIpAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCallerIpAddressRanges': allowedCallerIpAddressRanges,
    };
  }

  factory WorkflowAccessControlAction.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControlAction(
      allowedCallerIpAddressRanges: (map['allowedCallerIpAddressRanges'] as List).cast<String>(),
    );
  }
}

