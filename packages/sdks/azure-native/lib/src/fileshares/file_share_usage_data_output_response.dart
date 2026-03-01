// ignore_for_file: unused_element, unnecessary_cast

import 'live_shares_usage_data_response.dart';

/// File shares usage result.
class FileShareUsageDataOutputResponse {
  /// File share usage data for active file shares.
  final LiveSharesUsageDataResponse liveShares;

  /// Creates a new [FileShareUsageDataOutputResponse].
  /// [liveShares] File share usage data for active file shares.
  FileShareUsageDataOutputResponse({
    required this.liveShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'liveShares': liveShares.toMap(),
    };
  }

  factory FileShareUsageDataOutputResponse.fromMap(Map<String, dynamic> map) {
    return FileShareUsageDataOutputResponse(
      liveShares: LiveSharesUsageDataResponse.fromMap((map['liveShares'] as Map).cast<String, dynamic>()),
    );
  }
}

