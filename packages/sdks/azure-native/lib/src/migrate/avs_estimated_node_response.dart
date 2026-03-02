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
      cpuUtilization: map['cpuUtilization'] == null ? null : (map['cpuUtilization']! as double).input(),
      fttRaidLevel: map['fttRaidLevel'] == null ? null : (map['fttRaidLevel']! as String).input(),
      monthlyPrice: map['monthlyPrice'] == null ? null : (map['monthlyPrice']! as double).input(),
      nodeNumber: map['nodeNumber'] == null ? null : (map['nodeNumber']! as int).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      pricingModel: map['pricingModel'] == null ? null : (map['pricingModel']! as String).input(),
      ramUtilization: map['ramUtilization'] == null ? null : (map['ramUtilization']! as double).input(),
      storageUtilization: map['storageUtilization'] == null ? null : (map['storageUtilization']! as double).input(),
      totalCpu: map['totalCpu'] == null ? null : (map['totalCpu']! as double).input(),
      totalRam: map['totalRam'] == null ? null : (map['totalRam']! as double).input(),
      totalStorage: map['totalStorage'] == null ? null : (map['totalStorage']! as double).input(),
    );
  }
}

