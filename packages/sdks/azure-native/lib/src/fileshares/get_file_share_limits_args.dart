// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fileshares_get_file_share_limits_args_doc}
/// Arguments for getFileShareLimits.
/// {@endtemplate}
/// {@macro pulumi_fileshares_get_file_share_limits_args_doc}
class GetFileShareLimitsArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// Creates a new [GetFileShareLimitsArgs].
  /// [location] The name of the Azure region.
  const GetFileShareLimitsArgs({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetFileShareLimitsArgs.fromMap(Map<String, dynamic> map) {
    return GetFileShareLimitsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

