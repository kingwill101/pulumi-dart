// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mhub_get_apps_get_apps_args_doc}
/// Arguments for getApps.
/// {@endtemplate}
/// {@macro pulumi_mhub_get_apps_get_apps_args_doc}
class GetAppsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of App IDs. The value formats as `&lt;product_id&gt;:&lt;app_key&gt;`
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by App name.
  final pulumi.Input<String>? nameRegex;

  /// The os type. Valid values: `Android` and `iOS`.
  final pulumi.Input<String>? osType;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the Product.
  final pulumi.Input<String> productId;

  /// Creates a new [GetAppsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of App IDs. The value formats as `&lt;product_id&gt;:&lt;app_key&gt;`
  /// [nameRegex] A regex string to filter results by App name.
  /// [osType] The os type. Valid values: `Android` and `iOS`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productId] The ID of the Product.
  GetAppsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.osType,
    this.outputFile,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'osType': ?osType,
      'outputFile': ?outputFile,
      'productId': productId,
    };
  }

  factory GetAppsArgs.fromMap(Map<String, dynamic> map) {
    return GetAppsArgs(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
    );
  }
}
