// ignore_for_file: unused_element, unnecessary_cast


/// Option to specify if an unhealthy IG/NEG should be considered for global load balancing and traffic routing.
class ServiceLbPolicyAutoCapacityDrainResponse {
  /// Optional. If set to 'True', an unhealthy IG/NEG will be set as drained. - An IG/NEG is considered unhealthy if less than 25% of the instances/endpoints in the IG/NEG are healthy. - This option will never result in draining more than 50% of the configured IGs/NEGs for the Backend Service.
  final bool enable;

  /// Creates a new [ServiceLbPolicyAutoCapacityDrainResponse].
  /// [enable] Optional. If set to 'True', an unhealthy IG/NEG will be set as drained. - An IG/NEG is considered unhealthy if less than 25% of the instances/endpoints in the IG/NEG are healthy. - This option will never result in draining more than 50% of the configured IGs/NEGs for the Backend Service.
  ServiceLbPolicyAutoCapacityDrainResponse({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory ServiceLbPolicyAutoCapacityDrainResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLbPolicyAutoCapacityDrainResponse(
      enable: map['enable'] as bool,
    );
  }
}

