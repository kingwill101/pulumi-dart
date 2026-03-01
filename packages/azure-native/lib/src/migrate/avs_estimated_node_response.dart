// ignore_for_file: unused_element, unnecessary_cast


/// Details on the Estimated nodes for AVS Assessment.
class AvsEstimatedNodeResponse {
  /// Predicted CPU utilization.
  final double? cpuUtilization;
  /// FttRaidLevel recommended for Node.
  final String? fttRaidLevel;
  /// Total monthly cost for type and number of nodes.
  final double? monthlyPrice;
  /// Number of nodes that will be needed.
  final int? nodeNumber;
  /// Recommended SKU.
  final String? nodeType;
  /// Pricing model indicates what hour multiplier to use while estimating the Nodes cost.
  final String? pricingModel;
  /// Predicted RAM utilization.
  final double? ramUtilization;
  /// Predicted storage utilization.
  final double? storageUtilization;
  /// Predicted total CPU cores across the set of nodes.
  final double? totalCpu;
  /// Predicted total RAM used in GB.
  final double? totalRam;
  /// Predicted total Storage used in GB.
  final double? totalStorage;

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
      cpuUtilization: map['cpuUtilization'] == null ? null : map['cpuUtilization'] as double,
      fttRaidLevel: map['fttRaidLevel'] == null ? null : map['fttRaidLevel'] as String,
      monthlyPrice: map['monthlyPrice'] == null ? null : map['monthlyPrice'] as double,
      nodeNumber: map['nodeNumber'] == null ? null : map['nodeNumber'] as int,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      pricingModel: map['pricingModel'] == null ? null : map['pricingModel'] as String,
      ramUtilization: map['ramUtilization'] == null ? null : map['ramUtilization'] as double,
      storageUtilization: map['storageUtilization'] == null ? null : map['storageUtilization'] as double,
      totalCpu: map['totalCpu'] == null ? null : map['totalCpu'] as double,
      totalRam: map['totalRam'] == null ? null : map['totalRam'] as double,
      totalStorage: map['totalStorage'] == null ? null : map['totalStorage'] as double,
    );
  }
}

