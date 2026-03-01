// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_target_split.dart';

class AppHostingTrafficTarget {
  /// A list of traffic splits that together represent where traffic is being routed.
  /// Structure is documented below.
  final List<AppHostingTrafficTargetSplit> splits;

  /// Creates a new [AppHostingTrafficTarget].
  /// [splits] A list of traffic splits that together represent where traffic is being routed.
  AppHostingTrafficTarget({
    required this.splits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splits': pulumi.Input.encodeList<AppHostingTrafficTargetSplit, Map<String, dynamic>>(splits, (value) => value.toMap()),
    };
  }

  factory AppHostingTrafficTarget.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficTarget(
      splits: pulumi.Input.decodeList<AppHostingTrafficTargetSplit>(map['splits'], (value) => AppHostingTrafficTargetSplit.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

