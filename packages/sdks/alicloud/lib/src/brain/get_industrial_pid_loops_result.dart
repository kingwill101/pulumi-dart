// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_industrial_pid_loops_loop.dart';

/// Result data returned by getIndustrialPidLoops.
class GetIndustrialPidLoopsResult {
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of Brain Industrial Pid Loops. Each element contains the following attributes:
  final List<GetIndustrialPidLoopsLoop> loops;
  final String? nameRegex;

  /// A list of Pid Loop names.
  final List<String> names;
  final String? outputFile;

  /// The name of Pid Loop.
  final String? pidLoopName;
  final String pidProjectId;

  /// The status of Pid Loop.
  final String? status;

  /// Creates a new [GetIndustrialPidLoopsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [loops] A list of Brain Industrial Pid Loops. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Pid Loop names.
  /// [outputFile] Optional.
  /// [pidLoopName] The name of Pid Loop.
  /// [pidProjectId] Required.
  /// [status] The status of Pid Loop.
  GetIndustrialPidLoopsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.loops,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pidLoopName,
    required this.pidProjectId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'loops':
          pulumi.Input.encodeList<
            GetIndustrialPidLoopsLoop,
            Map<String, dynamic>
          >(loops, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pidLoopName': ?pidLoopName,
      'pidProjectId': pidProjectId,
      'status': ?status,
    };
  }

  factory GetIndustrialPidLoopsResult.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidLoopsResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loops: pulumi.Input.decodeList<GetIndustrialPidLoopsLoop>(
        map['loops']!,
        (value) => GetIndustrialPidLoopsLoop.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pidLoopName: (() {
        final guardedValue = map['pidLoopName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pidProjectId: map['pidProjectId'] as String,
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
