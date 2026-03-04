// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the Estimated nodes for AVS Assessment.
class AvsEstimatedNodeResponse {
  /// Predicted CPU utilization.
  final pulumi.Input<double>? cpuUtilization;

  /// FttRaidLevel recommended for Node.
  final pulumi.Input<String>? fttRaidLevel;

  /// Total monthly cost for type and number of nodes.
  final pulumi.Input<double>? monthlyPrice;

  /// Number of nodes that will be needed.
  final pulumi.Input<int>? nodeNumber;

  /// Recommended SKU.
  final pulumi.Input<String>? nodeType;

  /// Pricing model indicates what hour multiplier to use while estimating the Nodes cost.
  final pulumi.Input<String>? pricingModel;

  /// Predicted RAM utilization.
  final pulumi.Input<double>? ramUtilization;

  /// Predicted storage utilization.
  final pulumi.Input<double>? storageUtilization;

  /// Predicted total CPU cores across the set of nodes.
  final pulumi.Input<double>? totalCpu;

  /// Predicted total RAM used in GB.
  final pulumi.Input<double>? totalRam;

  /// Predicted total Storage used in GB.
  final pulumi.Input<double>? totalStorage;

  /// Creates a new [AvsEstimatedNodeResponse].
  /// [cpuUtilization] Predicted CPU utilization.
  /// [fttRaidLevel] FttRaidLevel recommended for Node.
  /// [monthlyPrice] Total monthly cost for type and number of nodes.
  /// [nodeNumber] Number of nodes that will be needed.
  /// [nodeType] Recommended SKU.
  /// [pricingModel] Pricing model indicates what hour multiplier to use while estimating the Nodes cost.
  /// [ramUtilization] Predicted RAM utilization.
  /// [storageUtilization] Predicted storage utilization.
  /// [totalCpu] Predicted total CPU cores across the set of nodes.
  /// [totalRam] Predicted total RAM used in GB.
  /// [totalStorage] Predicted total Storage used in GB.
  AvsEstimatedNodeResponse({
    this.cpuUtilization,
    this.fttRaidLevel,
    this.monthlyPrice,
    this.nodeNumber,
    this.nodeType,
    this.pricingModel,
    this.ramUtilization,
    this.storageUtilization,
    this.totalCpu,
    this.totalRam,
    this.totalStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilization': ?cpuUtilization,
      'fttRaidLevel': ?fttRaidLevel,
      'monthlyPrice': ?monthlyPrice,
      'nodeNumber': ?nodeNumber,
      'nodeType': ?nodeType,
      'pricingModel': ?pricingModel,
      'ramUtilization': ?ramUtilization,
      'storageUtilization': ?storageUtilization,
      'totalCpu': ?totalCpu,
      'totalRam': ?totalRam,
      'totalStorage': ?totalStorage,
    };
  }

  factory AvsEstimatedNodeResponse.fromMap(Map<String, dynamic> map) {
    return AvsEstimatedNodeResponse(
      cpuUtilization: (() {
        final guardedValue = map['cpuUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      fttRaidLevel: (() {
        final guardedValue = map['fttRaidLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monthlyPrice: (() {
        final guardedValue = map['monthlyPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      nodeNumber: (() {
        final guardedValue = map['nodeNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeType: (() {
        final guardedValue = map['nodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pricingModel: (() {
        final guardedValue = map['pricingModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ramUtilization: (() {
        final guardedValue = map['ramUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      storageUtilization: (() {
        final guardedValue = map['storageUtilization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalCpu: (() {
        final guardedValue = map['totalCpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalRam: (() {
        final guardedValue = map['totalRam'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalStorage: (() {
        final guardedValue = map['totalStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
