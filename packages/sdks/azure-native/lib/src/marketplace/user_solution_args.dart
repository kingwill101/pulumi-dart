// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product.dart';

/// {@template pulumi_marketplace_user_solution_args_doc}
/// The set of arguments for UserSolution.
/// {@endtemplate}
/// {@macro pulumi_marketplace_user_solution_args_doc}
class UserSolutionArgs {
  final pulumi.Input<String>? displayName;
  final pulumi.Input<List<Product>>? products;
  /// The solution id
  final pulumi.Input<String>? solutionId;

  /// Creates a new [UserSolutionArgs].
  /// [displayName] Optional.
  /// [products] Optional.
  /// [solutionId] The solution id
  const UserSolutionArgs({
    this.displayName,
    this.products,
    this.solutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'products': ?pulumi.Input.mapOptionalInputValue<List<Product>, List<Map<String, dynamic>>>(products, (value) => pulumi.Input.encodeList<Product, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionId': ?solutionId,
    };
  }

  factory UserSolutionArgs.fromMap(Map<String, dynamic> map) {
    return UserSolutionArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Product>(guardedValue, (value) => Product.fromMap((value as Map).cast<String, dynamic>()))); })(),
      solutionId: (() { final guardedValue = map['solutionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
