import 'package:pulumi/pulumi.dart';
import '../traffic_source_attachment_traffic_source/traffic_source_attachment_traffic_source.dart';
import 'traffic_source_attachment_args.dart';

/// Attaches a traffic source to an Auto Scaling group.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `load_balancers`, `target_group_arns` and `traffic_source` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
///
/// ## Example Usage
///
/// ### Basic Usage
class TrafficSourceAttachment extends CustomResource {
  /// The name of the Auto Scaling group.
  late final Output<String> autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifiers of a traffic sources.
  late final Output<TrafficSourceAttachmentTrafficSource?> trafficSource;

  TrafficSourceAttachment(
    String name, {
    TrafficSourceAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/trafficSourceAttachment:TrafficSourceAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.region = registerOutput<String>('region');
    this.trafficSource =
        registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource');
  }
}
