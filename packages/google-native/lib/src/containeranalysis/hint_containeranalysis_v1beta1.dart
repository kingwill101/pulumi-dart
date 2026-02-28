// ignore_for_file: unused_element, unnecessary_cast

/// This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from "readable" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.
class HintContaineranalysisV1beta1 {
  /// The human readable name of this attestation authority, for example "qa".
  final String humanReadableName;

  /// Creates a new [HintContaineranalysisV1beta1].
  /// [humanReadableName] The human readable name of this attestation authority, for example "qa".
  HintContaineranalysisV1beta1({
    required this.humanReadableName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['humanReadableName'] = humanReadableName;
    return map;
  }

  factory HintContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return HintContaineranalysisV1beta1(
      humanReadableName: map['humanReadableName'] as String,
    );
  }
}
