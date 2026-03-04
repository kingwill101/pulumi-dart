// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_patch_baselines_get_patch_baselines_args_doc}
/// Arguments for getPatchBaselines.
/// {@endtemplate}
/// {@macro pulumi_oos_get_patch_baselines_get_patch_baselines_args_doc}
class GetPatchBaselinesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Patch Baseline IDs. Its element value is same as Patch Baseline Name.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Patch Baseline name.
  final pulumi.Input<String>? nameRegex;

  /// Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`.
  final pulumi.Input<String>? operationSystem;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Patch baseline sharing type. Valid values: `Private`, `Public`.
  final pulumi.Input<String>? shareType;

  /// Creates a new [GetPatchBaselinesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Patch Baseline IDs. Its element value is same as Patch Baseline Name.
  /// [nameRegex] A regex string to filter results by Patch Baseline name.
  /// [operationSystem] Operating system type. Valid values: `AliyunLinux`, `Anolis`, `CentOS`, `Debian`, `RedhatEnterpriseLinux`, `Ubuntu`, `Windows`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [shareType] Patch baseline sharing type. Valid values: `Private`, `Public`.
  GetPatchBaselinesArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.operationSystem,
    this.outputFile,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'operationSystem': ?operationSystem,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
    };
  }

  factory GetPatchBaselinesArgs.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesArgs(
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
      operationSystem: (() {
        final guardedValue = map['operationSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shareType: (() {
        final guardedValue = map['shareType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
