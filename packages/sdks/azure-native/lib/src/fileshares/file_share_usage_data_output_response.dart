// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'live_shares_usage_data_response.dart';

/// File shares usage result.
class FileShareUsageDataOutputResponse {
  /// File share usage data for active file shares.
  final pulumi.Input<LiveSharesUsageDataResponse> liveShares;

  /// Creates a new [FileShareUsageDataOutputResponse].
  /// [liveShares] File share usage data for active file shares.
  FileShareUsageDataOutputResponse({
    required this.liveShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'liveShares': pulumi.Input.mapInputValue<LiveSharesUsageDataResponse, Map<String, dynamic>>(liveShares, (value) => value.toMap()),
    };
  }

  factory FileShareUsageDataOutputResponse.fromMap(Map<String, dynamic> map) {
    return FileShareUsageDataOutputResponse(
      liveShares: pulumi.Input.fromValue(LiveSharesUsageDataResponse.fromMap((map['liveShares']! as Map).cast<String, dynamic>())),
    );
  }
}

