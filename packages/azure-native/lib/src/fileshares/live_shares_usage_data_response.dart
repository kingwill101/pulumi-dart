// ignore_for_file: unused_element, unnecessary_cast


/// Usage data for live shares.
class LiveSharesUsageDataResponse {
  /// The number of active file shares.
  final int fileShareCount;

  /// Creates a new [LiveSharesUsageDataResponse].
  /// [fileShareCount] The number of active file shares.
  LiveSharesUsageDataResponse({
    required this.fileShareCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShareCount': fileShareCount,
    };
  }

  factory LiveSharesUsageDataResponse.fromMap(Map<String, dynamic> map) {
    return LiveSharesUsageDataResponse(
      fileShareCount: map['fileShareCount'] as int,
    );
  }
}

