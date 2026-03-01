// ignore_for_file: unused_element, unnecessary_cast

import 'trust_anchor_source_source_data.dart';

class TrustAnchorSource {
  /// The data denoting the source of trust, documented below
  final TrustAnchorSourceSourceData sourceData;

  /// The type of the source of trust. Must be either `AWS_ACM_PCA` or `CERTIFICATE_BUNDLE`.
  final String sourceType;

  /// Creates a new [TrustAnchorSource].
  /// [sourceData] The data denoting the source of trust, documented below
  /// [sourceType] The type of the source of trust. Must be either `AWS_ACM_PCA` or `CERTIFICATE_BUNDLE`.
  TrustAnchorSource({required this.sourceData, required this.sourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceData': sourceData.toMap(),
      'sourceType': sourceType,
    };
  }

  factory TrustAnchorSource.fromMap(Map<String, dynamic> map) {
    return TrustAnchorSource(
      sourceData: TrustAnchorSourceSourceData.fromMap(
        (map['sourceData'] as Map).cast<String, dynamic>(),
      ),
      sourceType: map['sourceType'] as String,
    );
  }
}
