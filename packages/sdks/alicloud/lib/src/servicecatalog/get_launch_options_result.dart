// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_launch_options_launch_option.dart';
import 'get_launch_options_option.dart';

/// Result data returned by getLaunchOptions.
class GetLaunchOptionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// (Available since v1.197.0) A list of Launch Option Entries. Each element contains the following attributes:
  final List<GetLaunchOptionsLaunchOption> launchOptions;
  final String? nameRegex;

  /// (Deprecated since v1.197.0) A list of Launch Option Entries. Each element contains the following attributes:
  final List<GetLaunchOptionsOption> options;
  final String? outputFile;
  final String productId;

  /// Creates a new [GetLaunchOptionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [launchOptions] (Available since v1.197.0) A list of Launch Option Entries. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [options] (Deprecated since v1.197.0) A list of Launch Option Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [productId] Required.
  GetLaunchOptionsResult({
    required this.id,
    required this.ids,
    required this.launchOptions,
    this.nameRegex,
    required this.options,
    this.outputFile,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'launchOptions':
          pulumi.Input.encodeList<
            GetLaunchOptionsLaunchOption,
            Map<String, dynamic>
          >(launchOptions, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'options':
          pulumi.Input.encodeList<GetLaunchOptionsOption, Map<String, dynamic>>(
            options,
            (value) => value.toMap(),
          ),
      'outputFile': ?outputFile,
      'productId': productId,
    };
  }

  factory GetLaunchOptionsResult.fromMap(Map<String, dynamic> map) {
    return GetLaunchOptionsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      launchOptions: pulumi.Input.decodeList<GetLaunchOptionsLaunchOption>(
        map['launchOptions']!,
        (value) => GetLaunchOptionsLaunchOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      options: pulumi.Input.decodeList<GetLaunchOptionsOption>(
        map['options']!,
        (value) => GetLaunchOptionsOption.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productId: map['productId'] as String,
    );
  }
}
