// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_plugins_get_plugins_args_doc}
/// Arguments for getPlugins.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_plugins_get_plugins_args_doc}
class GetPluginsArgs {
  /// A list of Plugin IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Plugin name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  final pulumi.Input<String>? pluginName;

  /// The type of the plug-in. Valid values: `backendSignature`, `caching`, `cors`, `ipControl`, `jwtAuth`, `trafficControl`.
  final pulumi.Input<String>? pluginType;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPluginsArgs].
  /// [ids] A list of Plugin IDs.
  /// [nameRegex] A regex string to filter results by Plugin name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [pluginName] The name of the plug-in that you want to create. It can contain uppercase English letters, lowercase English letters, Chinese characters, numbers, and underscores (_). It must be 4 to 50 characters in length and cannot start with an underscore (_).
  /// [pluginType] The type of the plug-in. Valid values: `backendSignature`, `caching`, `cors`, `ipControl`, `jwtAuth`, `trafficControl`.
  /// [tags] A mapping of tags to assign to the resource.
  GetPluginsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.pluginName,
    this.pluginType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'pluginName': ?pluginName,
      'pluginType': ?pluginType,
      'tags': ?tags,
    };
  }

  factory GetPluginsArgs.fromMap(Map<String, dynamic> map) {
    return GetPluginsArgs(
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
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pluginName: (() {
        final guardedValue = map['pluginName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pluginType: (() {
        final guardedValue = map['pluginType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
