import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_plan_action/response_plan_action.dart';
import '../response_plan_incident_template/response_plan_incident_template.dart';
import '../response_plan_integration/response_plan_integration.dart';
import 'response_plan_args.dart';

/// Provides a resource to manage response plans in AWS Systems Manager Incident Manager.
///
/// > NOTE: A response plan implicitly depends on a replication set. If you configured your replication set in Pulumi, we recommend you add it to the `depends_on` argument for the ResponsePlan Resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage With All Fields
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an Incident Manager response plan using the response plan ARN. You can find the response plan ARN in the AWS Management Console. For example:
///
/// ```sh
/// $ pulumi import aws:ssmincidents/responsePlan:ResponsePlan responsePlanName ARNValue
/// ```
class ResponsePlan extends pulumi.CustomResource {
  /// The actions that the response plan starts at the beginning of an incident.
  late final pulumi.Output<ResponsePlanAction?> action;

  /// The ARN of the response plan.
  late final pulumi.Output<String> arn;

  /// The Chatbot chat channel used for collaboration during an incident.
  late final pulumi.Output<List<String>?> chatChannels;

  /// The long format of the response plan name. This field can contain spaces.
  late final pulumi.Output<String?> displayName;

  /// The Amazon Resource Name (ARN) for the contacts and escalation plans that the response plan engages during an incident.
  late final pulumi.Output<List<String>?> engagements;

  /// The `incident_template` configuration block is required and supports the following arguments:
  late final pulumi.Output<ResponsePlanIncidentTemplate> incidentTemplate;

  /// Information about third-party services integrated into the response plan. The following values are supported:
  late final pulumi.Output<ResponsePlanIntegration?> integration;

  /// The name of the response plan.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The tags applied to the response plan.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ResponsePlan(
    String name, {
    ResponsePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/responsePlan:ResponsePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<ResponsePlanAction?>('action');
    this.arn = registerOutput<String>('arn');
    this.chatChannels = registerOutput<List<String>?>('chatChannels');
    this.displayName = registerOutput<String?>('displayName');
    this.engagements = registerOutput<List<String>?>('engagements');
    this.incidentTemplate =
        registerOutput<ResponsePlanIncidentTemplate>('incidentTemplate');
    this.integration = registerOutput<ResponsePlanIntegration?>('integration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
