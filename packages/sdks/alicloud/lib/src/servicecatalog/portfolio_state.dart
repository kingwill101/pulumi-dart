// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Portfolio resources.
class PortfolioState {
  /// The creation time of the portfolio
  final pulumi.Input<String>? createTime;

  /// The description of the portfolio
  final pulumi.Input<String>? description;

  /// The ARN of the portfolio
  final pulumi.Input<String>? portfolioArn;

  /// The name of the portfolio
  final pulumi.Input<String>? portfolioName;

  /// The provider name of the portfolio
  final pulumi.Input<String>? providerName;

  /// Creates a new [PortfolioState].
  /// [createTime] The creation time of the portfolio
  /// [description] The description of the portfolio
  /// [portfolioArn] The ARN of the portfolio
  /// [portfolioName] The name of the portfolio
  /// [providerName] The provider name of the portfolio
  PortfolioState({
    this.createTime,
    this.description,
    this.portfolioArn,
    this.portfolioName,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'portfolioArn': ?portfolioArn,
      'portfolioName': ?portfolioName,
      'providerName': ?providerName,
    };
  }

  factory PortfolioState.fromMap(Map<String, dynamic> map) {
    return PortfolioState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portfolioArn: (() {
        final guardedValue = map['portfolioArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      portfolioName: (() {
        final guardedValue = map['portfolioName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: (() {
        final guardedValue = map['providerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
