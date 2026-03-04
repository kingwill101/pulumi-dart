// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_manager_for_agriculture_solution_response.dart';

/// Result data returned by listAgriServiceAvailableSolutions.
class ListAgriServiceAvailableSolutionsResult {
  /// Agri solutions list.
  final List<DataManagerForAgricultureSolutionResponse> solutions;

  /// Creates a new [ListAgriServiceAvailableSolutionsResult].
  /// [solutions] Agri solutions list.
  ListAgriServiceAvailableSolutionsResult({required this.solutions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'solutions':
          pulumi.Input.encodeList<
            DataManagerForAgricultureSolutionResponse,
            Map<String, dynamic>
          >(solutions, (value) => value.toMap()),
    };
  }

  factory ListAgriServiceAvailableSolutionsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListAgriServiceAvailableSolutionsResult(
      solutions:
          pulumi.Input.decodeList<DataManagerForAgricultureSolutionResponse>(
            map['solutions']!,
            (value) => DataManagerForAgricultureSolutionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
