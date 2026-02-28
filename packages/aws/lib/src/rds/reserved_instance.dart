import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_instance_args.dart';
import 'reserved_instance_recurring_charge.dart';

/// Manages an RDS DB Reserved Instance.
///
/// > **NOTE:** Once created, a reservation is valid for the `duration` of the provided `offering_id` and cannot be deleted. Performing a `destroy` will only remove the resource from state. For more information see [RDS Reserved Instances Documentation](https://aws.amazon.com/rds/reserved-instances/) and [PurchaseReservedDBInstancesOffering](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_PurchaseReservedDBInstancesOffering.html).
///
/// > **NOTE:** Due to the expense of testing this resource, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getReservedInstanceOffering({
///     dbInstanceClass: "db.t2.micro",
///     duration: 31536000,
///     multiAz: false,
///     offeringType: "All Upfront",
///     productDescription: "mysql",
/// });
/// const example = new aws.rds.ReservedInstance("example", {
///     offeringId: test.then(test => test.offeringId),
///     reservationId: "optionalCustomReservationID",
///     instanceCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_reserved_instance_offering(db_instance_class="db.t2.micro",
///     duration=31536000,
///     multi_az=False,
///     offering_type="All Upfront",
///     product_description="mysql")
/// example = aws.rds.ReservedInstance("example",
///     offering_id=test.offering_id,
///     reservation_id="optionalCustomReservationID",
///     instance_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Rds.GetReservedInstanceOffering.Invoke(new()
///     {
///         DbInstanceClass = "db.t2.micro",
///         Duration = 31536000,
///         MultiAz = false,
///         OfferingType = "All Upfront",
///         ProductDescription = "mysql",
///     });
///
///     var example = new Aws.Rds.ReservedInstance("example", new()
///     {
///         OfferingId = test.Apply(getReservedInstanceOfferingResult => getReservedInstanceOfferingResult.OfferingId),
///         ReservationId = "optionalCustomReservationID",
///         InstanceCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := rds.GetReservedInstanceOffering(ctx, &rds.GetReservedInstanceOfferingArgs{
/// 			DbInstanceClass:    "db.t2.micro",
/// 			Duration:           31536000,
/// 			MultiAz:            false,
/// 			OfferingType:       "All Upfront",
/// 			ProductDescription: "mysql",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewReservedInstance(ctx, "example", &rds.ReservedInstanceArgs{
/// 			OfferingId:    pulumi.String(test.OfferingId),
/// 			ReservationId: pulumi.String("optionalCustomReservationID"),
/// 			InstanceCount: pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = RdsFunctions.getReservedInstanceOffering(GetReservedInstanceOfferingArgs.builder()
///             .dbInstanceClass("db.t2.micro")
///             .duration(31536000)
///             .multiAz(false)
///             .offeringType("All Upfront")
///             .productDescription("mysql")
///             .build());
///
///         var example = new ReservedInstance("example", ReservedInstanceArgs.builder()
///             .offeringId(test.offeringId())
///             .reservationId("optionalCustomReservationID")
///             .instanceCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:ReservedInstance
///     properties:
///       offeringId: ${test.offeringId}
///       reservationId: optionalCustomReservationID
///       instanceCount: 3
/// variables:
///   test:
///     fn::invoke:
///       function: aws:rds:getReservedInstanceOffering
///       arguments:
///         dbInstanceClass: db.t2.micro
///         duration: 3.1536e+07
///         multiAz: false
///         offeringType: All Upfront
///         productDescription: mysql
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS DB Instance Reservations using the `instance_id`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/reservedInstance:ReservedInstance reservation_instance CustomReservationID
/// ```
class ReservedInstance extends pulumi.CustomResource {
  /// ARN for the reserved DB instance.
  late final pulumi.Output<String> arn;

  /// Currency code for the reserved DB instance.
  late final pulumi.Output<String> currencyCode;

  /// DB instance class for the reserved DB instance.
  late final pulumi.Output<String> dbInstanceClass;

  /// Duration of the reservation in seconds.
  late final pulumi.Output<int> duration;

  /// Fixed price charged for this reserved DB instance.
  late final pulumi.Output<double> fixedPrice;

  /// Number of instances to reserve. Default value is `1`.
  late final pulumi.Output<int?> instanceCount;

  /// Unique identifier for the lease associated with the reserved DB instance. Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.
  late final pulumi.Output<String> leaseId;

  /// Whether the reservation applies to Multi-AZ deployments.
  late final pulumi.Output<bool> multiAz;

  /// ID of the Reserved DB instance offering to purchase. To determine an `offering_id`, see the `aws.rds.getReservedInstanceOffering` data source.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> offeringId;

  /// Offering type of this reserved DB instance.
  late final pulumi.Output<String> offeringType;

  /// Description of the reserved DB instance.
  late final pulumi.Output<String> productDescription;

  /// Recurring price charged to run this reserved DB instance.
  late final pulumi.Output<List<ReservedInstanceRecurringCharge>>
      recurringCharges;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Customer-specified identifier to track this reservation.
  late final pulumi.Output<String?> reservationId;

  /// Time the reservation started.
  late final pulumi.Output<String> startTime;

  /// State of the reserved DB instance.
  late final pulumi.Output<String> state;

  /// Map of tags to assign to the DB reservation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Hourly price charged for this reserved DB instance.
  late final pulumi.Output<double> usagePrice;

  /// Creates a new [ReservedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedInstance]. {@macro pulumi_rds_reserved_instance_reserved_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedInstance(
    String name, {
    ReservedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/reservedInstance:ReservedInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.currencyCode = registerOutput<String>('currencyCode');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.duration = registerOutput<int>('duration');
    this.fixedPrice = registerOutput<double>('fixedPrice');
    this.instanceCount = registerOutput<int?>('instanceCount');
    this.leaseId = registerOutput<String>('leaseId');
    this.multiAz = registerOutput<bool>('multiAz');
    this.offeringId = registerOutput<String>('offeringId');
    this.offeringType = registerOutput<String>('offeringType');
    this.productDescription = registerOutput<String>('productDescription');
    this.recurringCharges =
        registerOutput<List<ReservedInstanceRecurringCharge>>(
            'recurringCharges');
    this.region = registerOutput<String>('region');
    this.reservationId = registerOutput<String?>('reservationId');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.usagePrice = registerOutput<double>('usagePrice');
  }
}
