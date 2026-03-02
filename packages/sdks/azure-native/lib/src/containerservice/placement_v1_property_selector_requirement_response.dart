// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PropertySelectorRequirement is a specific property requirement when picking clusters for resource placement.
class PlacementV1PropertySelectorRequirementResponse {
  /// Name is the name of the property; it should be a Kubernetes label name.
  final pulumi.Input<String> name;
  /// Operator specifies the relationship between a cluster's observed value of the specified property and the values given in the requirement.
  final pulumi.Input<String> operator;
  /// Values are a list of values of the specified property which Fleet will compare against the observed values of individual member clusters in accordance with the given operator. At this moment, each value should be a Kubernetes quantity. For more information, see https://pkg.go.dev/k8s.io/apimachinery/pkg/api/resource#Quantity. If the operator is Gt (greater than), Ge (greater than or equal to), Lt (less than), or `Le` (less than or equal to), Eq (equal to), or Ne (ne), exactly one value must be specified in the list.
  final pulumi.Input<List<String>> values;

  /// Creates a new [PlacementV1PropertySelectorRequirementResponse].
  /// [name] Name is the name of the property; it should be a Kubernetes label name.
  /// [operator] Operator specifies the relationship between a cluster's observed value of the specified property and the values given in the requirement.
  /// [values] Values are a list of values of the specified property which Fleet will compare against the observed values of individual member clusters in accordance with the given operator. At this moment, each value should be a Kubernetes quantity. For more information, see https://pkg.go.dev/k8s.io/apimachinery/pkg/api/resource#Quantity. If the operator is Gt (greater than), Ge (greater than or equal to), Lt (less than), or `Le` (less than or equal to), Eq (equal to), or Ne (ne), exactly one value must be specified in the list.
  PlacementV1PropertySelectorRequirementResponse({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory PlacementV1PropertySelectorRequirementResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1PropertySelectorRequirementResponse(
      name: (map['name'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

