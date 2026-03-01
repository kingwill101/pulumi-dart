// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_profile_args_doc}
/// Arguments for getProfile.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_profile_args_doc}
class GetProfileArgs {
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// Locale of profile to retrieve, default is en-us.
  final pulumi.Input<String>? localeCode;
  /// The name of the profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProfileArgs].
  /// [hubName] The name of the hub.
  /// [localeCode] Locale of profile to retrieve, default is en-us.
  /// [profileName] The name of the profile.
  /// [resourceGroupName] The name of the resource group.
  GetProfileArgs({
    required String hubName,
    String? localeCode,
    required String profileName,
    required String resourceGroupName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      localeCode = pulumi.Input.asOptionalInput<String>(localeCode),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'localeCode': ?localeCode,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetProfileArgs(
      hubName: map['hubName'] as String,
      localeCode: map['localeCode'] == null ? null : map['localeCode'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

