// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_macc_args_doc}
/// Arguments for getMacc.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_macc_args_doc}
class GetMaccArgs {
  /// Name of primary MACC.
  final pulumi.Input<String> maccName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMaccArgs].
  /// [maccName] Name of primary MACC.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMaccArgs({
    required String maccName,
    required String resourceGroupName,
  }) :
      maccName = pulumi.Input.asInput<String>(maccName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maccName': maccName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMaccArgs.fromMap(Map<String, dynamic> map) {
    return GetMaccArgs(
      maccName: map['maccName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

