// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fileshares_get_file_share_usage_data_args_doc}
/// Arguments for getFileShareUsageData.
/// {@endtemplate}
/// {@macro pulumi_fileshares_get_file_share_usage_data_args_doc}
class GetFileShareUsageDataArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// Creates a new [GetFileShareUsageDataArgs].
  /// [location] The name of the Azure region.
  GetFileShareUsageDataArgs({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetFileShareUsageDataArgs.fromMap(Map<String, dynamic> map) {
    return GetFileShareUsageDataArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

