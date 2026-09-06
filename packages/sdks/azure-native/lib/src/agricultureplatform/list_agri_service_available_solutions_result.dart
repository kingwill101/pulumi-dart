// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_manager_for_agriculture_solution_response.dart';

/// Result data returned by listAgriServiceAvailableSolutions.
class ListAgriServiceAvailableSolutionsResult {
  /// Agri solutions list.
  final List<DataManagerForAgricultureSolutionResponse>? solutions;

  /// Creates a new [ListAgriServiceAvailableSolutionsResult].
  /// [solutions] Agri solutions list.
  const ListAgriServiceAvailableSolutionsResult({
    this.solutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'solutions': ?(() { final guardedValue = solutions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataManagerForAgricultureSolutionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAgriServiceAvailableSolutionsResult.fromMap(Map<String, dynamic> map) {
    return ListAgriServiceAvailableSolutionsResult(
      solutions: (() { final guardedValue = map['solutions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataManagerForAgricultureSolutionResponse>(guardedValue, (value) => DataManagerForAgricultureSolutionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
