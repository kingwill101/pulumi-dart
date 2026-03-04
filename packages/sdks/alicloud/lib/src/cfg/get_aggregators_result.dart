// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregators_aggregator.dart';

/// Result data returned by getAggregators.
class GetAggregatorsResult {
  /// A list of config aggregators. Each element contains the following attributes:
  final List<GetAggregatorsAggregator> aggregators;
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;

  /// A list of Aggregator names.
  final List<String> names;
  final String? outputFile;

  /// The status of the resource.
  final String? status;

  /// Creates a new [GetAggregatorsResult].
  /// [aggregators] A list of config aggregators. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Aggregator names.
  /// [outputFile] Optional.
  /// [status] The status of the resource.
  GetAggregatorsResult({
    required this.aggregators,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregators':
          pulumi.Input.encodeList<
            GetAggregatorsAggregator,
            Map<String, dynamic>
          >(aggregators, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAggregatorsResult.fromMap(Map<String, dynamic> map) {
    return GetAggregatorsResult(
      aggregators: pulumi.Input.decodeList<GetAggregatorsAggregator>(
        map['aggregators']!,
        (value) => GetAggregatorsAggregator.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
