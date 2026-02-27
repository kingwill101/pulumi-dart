// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_traffic_current_split/app_hosting_traffic_current_split.dart';

class AppHostingTrafficCurrent {
  /// (Output)
  /// A list of traffic splits that together represent where traffic is being routed.
  /// Structure is documented below.
  final List<AppHostingTrafficCurrentSplit>? splits;

  AppHostingTrafficCurrent({
    this.splits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final splitsValue = splits;
    if (splitsValue != null) {
      map['splits'] = pulumi.Input.encodeList<AppHostingTrafficCurrentSplit,
          Map<String, dynamic>>(splitsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingTrafficCurrent.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficCurrent(
      splits: map['splits'] == null
          ? null
          : pulumi.Input.decodeList<AppHostingTrafficCurrentSplit>(
              map['splits'],
              (value) => AppHostingTrafficCurrentSplit.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
