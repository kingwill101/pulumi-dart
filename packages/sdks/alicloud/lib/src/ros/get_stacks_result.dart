// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stacks_stack.dart';

/// Result data returned by getStacks.
class GetStacksResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? parentStackId;
  final bool? showNestedStack;
  final String? stackName;
  final List<GetStacksStack> stacks;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetStacksResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [parentStackId] Optional.
  /// [showNestedStack] Optional.
  /// [stackName] Optional.
  /// [stacks] Required.
  /// [status] Optional.
  /// [tags] Optional.
  GetStacksResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.parentStackId,
    this.showNestedStack,
    this.stackName,
    required this.stacks,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'parentStackId': ?parentStackId,
      'showNestedStack': ?showNestedStack,
      'stackName': ?stackName,
      'stacks': pulumi.Input.encodeList<GetStacksStack, Map<String, dynamic>>(stacks, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetStacksResult.fromMap(Map<String, dynamic> map) {
    return GetStacksResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentStackId: (() { final guardedValue = map['parentStackId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      showNestedStack: (() { final guardedValue = map['showNestedStack']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      stackName: (() { final guardedValue = map['stackName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stacks: pulumi.Input.decodeList<GetStacksStack>(map['stacks']!, (value) => GetStacksStack.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

