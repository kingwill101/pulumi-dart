// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_traffic_target_split/app_hosting_traffic_target_split.dart';

class AppHostingTrafficTarget {
  /// A list of traffic splits that together represent where traffic is being routed.
  /// Structure is documented below.
  final List<AppHostingTrafficTargetSplit> splits;

  AppHostingTrafficTarget({
    required this.splits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['splits'] =
        Input.encodeList<AppHostingTrafficTargetSplit, Map<String, dynamic>>(
            splits, (value) => value.toMap());
    return map;
  }

  factory AppHostingTrafficTarget.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficTarget(
      splits: Input.decodeList<AppHostingTrafficTargetSplit>(
          map['splits'],
          (value) => AppHostingTrafficTargetSplit.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
