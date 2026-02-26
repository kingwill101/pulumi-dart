import 'package:pulumi/pulumi.dart';
import '../reserved_instance_recurring_charge/reserved_instance_recurring_charge.dart';
import 'reserved_instance_args.dart';

/// Manages an RDS DB Reserved Instance.
///
/// > **NOTE:** Once created, a reservation is valid for the <span pulumi-lang-nodejs="`duration`" pulumi-lang-dotnet="`Duration`" pulumi-lang-go="`duration`" pulumi-lang-python="`duration`" pulumi-lang-yaml="`duration`" pulumi-lang-java="`duration`">`duration`</span> of the provided <span pulumi-lang-nodejs="`offeringId`" pulumi-lang-dotnet="`OfferingId`" pulumi-lang-go="`offeringId`" pulumi-lang-python="`offering_id`" pulumi-lang-yaml="`offeringId`" pulumi-lang-java="`offeringId`">`offering_id`</span> and cannot be deleted. Performing a <span pulumi-lang-nodejs="`destroy`" pulumi-lang-dotnet="`Destroy`" pulumi-lang-go="`destroy`" pulumi-lang-python="`destroy`" pulumi-lang-yaml="`destroy`" pulumi-lang-java="`destroy`">`destroy`</span> will only remove the resource from state. For more information see [RDS Reserved Instances Documentation](https://aws.amazon.com/rds/reserved-instances/) and [PurchaseReservedDBInstancesOffering](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_PurchaseReservedDBInstancesOffering.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getReservedInstanceOffering({
/// dbInstanceClass: "db.t2.micro",
/// duration: 31536000,
/// multiAz: false,
/// offeringType: "All Upfront",
/// productDescription: "mysql",
/// });
/// const example = new aws.rds.ReservedInstance("example", {
/// offeringId: test.then(test => test.offeringId),
/// reservationId: "optionalCustomReservationID",
/// instanceCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_reserved_instance_offering(db_instance_class="db.t2.micro",
/// duration=31536000,
/// multi_az=False,
/// offering_type="All Upfront",
/// product_description="mysql")
/// example = aws.rds.ReservedInstance("example",
/// offering_id=test.offering_id,
/// reservation_id="optionalCustomReservationID",
/// instance_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetReservedInstanceOffering.Invoke(new()
/// {
/// DbInstanceClass = "db.t2.micro",
/// Duration = 31536000,
/// MultiAz = false,
/// OfferingType = "All Upfront",
/// ProductDescription = "mysql",
/// });
///
/// var example = new Aws.Rds.ReservedInstance("example", new()
/// {
/// OfferingId = test.Apply(getReservedInstanceOfferingResult => getReservedInstanceOfferingResult.OfferingId),
/// ReservationId = "optionalCustomReservationID",
/// InstanceCount = 3,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := rds.GetReservedInstanceOffering(ctx, &rds.GetReservedInstanceOfferingArgs{
/// DbInstanceClass:    "db.t2.micro",
/// Duration:           31536000,
/// MultiAz:            false,
/// OfferingType:       "All Upfront",
/// ProductDescription: "mysql",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewReservedInstance(ctx, "example", &rds.ReservedInstanceArgs{
/// OfferingId:    pulumi.String(test.OfferingId),
/// ReservationId: pulumi.String("optionalCustomReservationID"),
/// InstanceCount: pulumi.Int(3),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetReservedInstanceOfferingArgs;
/// import com.pulumi.aws.rds.ReservedInstance;
/// import com.pulumi.aws.rds.ReservedInstanceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var test = RdsFunctions.getReservedInstanceOffering(GetReservedInstanceOfferingArgs.builder()
/// .dbInstanceClass("db.t2.micro")
/// .duration(31536000)
/// .multiAz(false)
/// .offeringType("All Upfront")
/// .productDescription("mysql")
/// .build());
///
/// var example = new ReservedInstance("example", ReservedInstanceArgs.builder()
/// .offeringId(test.offeringId())
/// .reservationId("optionalCustomReservationID")
/// .instanceCount(3)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:ReservedInstance
/// properties:
/// offeringId: ${test.offeringId}
/// reservationId: optionalCustomReservationID
/// instanceCount: 3
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getReservedInstanceOffering
/// arguments:
/// dbInstanceClass: db.t2.micro
/// duration: 3.1536e+07
/// multiAz: false
/// offeringType: All Upfront
/// productDescription: mysql
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS DB Instance Reservations using the <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/reservedInstance:ReservedInstance reservation_instance CustomReservationID
/// ```
class ReservedInstance extends CustomResource {
  /// ARN for the reserved DB instance.
  late final Output<String> arn;

  /// Currency code for the reserved DB instance.
  late final Output<String> currencyCode;

  /// DB instance class for the reserved DB instance.
  late final Output<String> dbInstanceClass;

  /// Duration of the reservation in seconds.
  late final Output<int> duration;

  /// Fixed price charged for this reserved DB instance.
  late final Output<double> fixedPrice;

  /// Number of instances to reserve. Default value is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  late final Output<int?> instanceCount;

  /// Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  late final Output<String> leaseId;

  /// Whether the reservation applies to Multi-AZ deployments.
  late final Output<bool> multiAz;

  /// ID of the Reserved DB instance offering to purchase. To determine an <span pulumi-lang-nodejs="`offeringId`" pulumi-lang-dotnet="`OfferingId`" pulumi-lang-go="`offeringId`" pulumi-lang-python="`offering_id`" pulumi-lang-yaml="`offeringId`" pulumi-lang-java="`offeringId`">`offering_id`</span>, see the <span pulumi-lang-nodejs="`aws.rds.getReservedInstanceOffering`" pulumi-lang-dotnet="`aws.rds.getReservedInstanceOffering`" pulumi-lang-go="`rds.getReservedInstanceOffering`" pulumi-lang-python="`rds_get_reserved_instance_offering`" pulumi-lang-yaml="`aws.rds.getReservedInstanceOffering`" pulumi-lang-java="`aws.rds.getReservedInstanceOffering`">`aws.rds.getReservedInstanceOffering`</span> data source.
  ///
  /// The following arguments are optional:
  late final Output<String> offeringId;

  /// Offering type of this reserved DB instance.
  late final Output<String> offeringType;

  /// Description of the reserved DB instance.
  late final Output<String> productDescription;

  /// Recurring price charged to run this reserved DB instance.
  late final Output<List<ReservedInstanceRecurringCharge>> recurringCharges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Customer-specified identifier to track this reservation.
  late final Output<String?> reservationId;

  /// Time the reservation started.
  late final Output<String> startTime;

  /// State of the reserved DB instance.
  late final Output<String> state;

  /// Map of tags to assign to the DB reservation. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Hourly price charged for this reserved DB instance.
  late final Output<double> usagePrice;

  ReservedInstance(
    String name, {
    ReservedInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/reservedInstance:ReservedInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.currencyCode = Output.createUnknown<String>();
    this.dbInstanceClass = Output.createUnknown<String>();
    this.duration = Output.createUnknown<int>();
    this.fixedPrice = Output.createUnknown<double>();
    this.instanceCount = Output.createUnknown<int?>();
    this.leaseId = Output.createUnknown<String>();
    this.multiAz = Output.createUnknown<bool>();
    this.offeringId = Output.createUnknown<String>();
    this.offeringType = Output.createUnknown<String>();
    this.productDescription = Output.createUnknown<String>();
    this.recurringCharges =
        Output.createUnknown<List<ReservedInstanceRecurringCharge>>();
    this.region = Output.createUnknown<String>();
    this.reservationId = Output.createUnknown<String?>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.usagePrice = Output.createUnknown<double>();
  }
}
