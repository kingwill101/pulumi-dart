// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'application_info2.dart';
import 'compensation_info2.dart';
import 'job_degree_types_item2.dart';
import 'job_employment_types_item2.dart';
import 'job_job_benefits_item2.dart';
import 'job_job_level2.dart';
import 'job_posting_region2.dart';
import 'job_visibility2.dart';
import 'processing_options2.dart';

/// The set of arguments for Job.
class JobArgs9 {
  /// Strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as multiple jobs with the same company, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  final Input<List<String>>? addresses;

  /// Job application information.
  final Input<ApplicationInfo2>? applicationInfo;

  /// The resource name of the company listing the job. The format is "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For example, "projects/foo/tenants/bar/companies/baz".
  final Input<String> company;

  /// Job compensation information (a.k.a. "pay rate") i.e., the compensation that will paid to the employee.
  final Input<CompensationInfo2>? compensationInfo;

  /// A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: `a-zA-Z*`. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  final Input<Map<String, String>>? customAttributes;

  /// The desired education degrees for the job, such as Bachelors, Masters.
  final Input<List<JobDegreeTypesItem2>>? degreeTypes;

  /// The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  final Input<String>? department;

  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  final Input<String> description;

  /// The employment type(s) of a job, for example, full time or part time.
  final Input<List<JobEmploymentTypesItem2>>? employmentTypes;

  /// A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  final Input<String>? incentives;

  /// The benefits included with the job.
  final Input<List<JobJobBenefitsItem2>>? jobBenefits;

  /// The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final Input<String>? jobEndTime;

  /// The experience level associated with the job, such as "Entry Level".
  final Input<JobJobLevel2>? jobLevel;

  /// The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final Input<String>? jobStartTime;

  /// The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  final Input<String>? languageCode;

  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example, "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  final Input<String>? name;

  /// Strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be listed by the ListJobs API, but it can be retrieved with the GetJob API or updated with the UpdateJob API or deleted with the DeleteJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum number of open jobs over previous 7 days. If this threshold is exceeded, expired jobs are cleaned out in order of earliest expire time. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. If the timestamp is before the instant request is made, the job is treated as expired immediately on creation. This kind of job can not be updated. And when creating a job with past timestamp, the posting_publish_time must be set before posting_expire_time. The purpose of this feature is to allow other objects, such as Application, to refer a job that didn't exist in the system prior to becoming expired. If you want to modify a job that was expired on creation, delete it and create a new one. If this value isn't provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value isn't provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include job_end_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  final Input<String>? postingExpireTime;

  /// The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  final Input<String>? postingPublishTime;

  /// The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  final Input<JobPostingRegion2>? postingRegion;

  /// Options for job processing.
  final Input<ProcessingOptions2>? processingOptions;
  final Input<String>? project;

  /// A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  final Input<int>? promotionValue;

  /// A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final Input<String>? qualifications;

  /// The requisition ID, also referred to as the posting ID, is assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job isn't allowed to be created if there is another job with the same company, language_code and requisition_id. The maximum number of allowed characters is 255.
  final Input<String> requisitionId;

  /// A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final Input<String>? responsibilities;
  final Input<String> tenantId;

  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  final Input<String> title;

  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  final Input<JobVisibility2>? visibility;

  JobArgs9({
    this.addresses,
    this.applicationInfo,
    required this.company,
    this.compensationInfo,
    this.customAttributes,
    this.degreeTypes,
    this.department,
    required this.description,
    this.employmentTypes,
    this.incentives,
    this.jobBenefits,
    this.jobEndTime,
    this.jobLevel,
    this.jobStartTime,
    this.languageCode,
    this.name,
    this.postingExpireTime,
    this.postingPublishTime,
    this.postingRegion,
    this.processingOptions,
    this.project,
    this.promotionValue,
    this.qualifications,
    required this.requisitionId,
    this.responsibilities,
    required this.tenantId,
    required this.title,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    final applicationInfoValue = applicationInfo;
    if (applicationInfoValue != null) {
      map['applicationInfo'] =
          Input.mapOptionalInputValue<ApplicationInfo2, Map<String, dynamic>>(
              applicationInfoValue, (value) => value.toMap());
    }
    map['company'] = company;
    final compensationInfoValue = compensationInfo;
    if (compensationInfoValue != null) {
      map['compensationInfo'] =
          Input.mapOptionalInputValue<CompensationInfo2, Map<String, dynamic>>(
              compensationInfoValue, (value) => value.toMap());
    }
    final customAttributesValue = customAttributes;
    if (customAttributesValue != null) {
      map['customAttributes'] = customAttributesValue;
    }
    final degreeTypesValue = degreeTypes;
    if (degreeTypesValue != null) {
      map['degreeTypes'] =
          Input.mapOptionalInputValue<List<JobDegreeTypesItem2>, List<String>>(
              degreeTypesValue,
              (value) => Input.encodeList<JobDegreeTypesItem2, String>(
                  value, (value) => value.value));
    }
    final departmentValue = department;
    if (departmentValue != null) {
      map['department'] = departmentValue;
    }
    map['description'] = description;
    final employmentTypesValue = employmentTypes;
    if (employmentTypesValue != null) {
      map['employmentTypes'] = Input.mapOptionalInputValue<
              List<JobEmploymentTypesItem2>, List<String>>(
          employmentTypesValue,
          (value) => Input.encodeList<JobEmploymentTypesItem2, String>(
              value, (value) => value.value));
    }
    final incentivesValue = incentives;
    if (incentivesValue != null) {
      map['incentives'] = incentivesValue;
    }
    final jobBenefitsValue = jobBenefits;
    if (jobBenefitsValue != null) {
      map['jobBenefits'] =
          Input.mapOptionalInputValue<List<JobJobBenefitsItem2>, List<String>>(
              jobBenefitsValue,
              (value) => Input.encodeList<JobJobBenefitsItem2, String>(
                  value, (value) => value.value));
    }
    final jobEndTimeValue = jobEndTime;
    if (jobEndTimeValue != null) {
      map['jobEndTime'] = jobEndTimeValue;
    }
    final jobLevelValue = jobLevel;
    if (jobLevelValue != null) {
      map['jobLevel'] = Input.mapOptionalInputValue<JobJobLevel2, String>(
          jobLevelValue, (value) => value.value);
    }
    final jobStartTimeValue = jobStartTime;
    if (jobStartTimeValue != null) {
      map['jobStartTime'] = jobStartTimeValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final postingExpireTimeValue = postingExpireTime;
    if (postingExpireTimeValue != null) {
      map['postingExpireTime'] = postingExpireTimeValue;
    }
    final postingPublishTimeValue = postingPublishTime;
    if (postingPublishTimeValue != null) {
      map['postingPublishTime'] = postingPublishTimeValue;
    }
    final postingRegionValue = postingRegion;
    if (postingRegionValue != null) {
      map['postingRegion'] =
          Input.mapOptionalInputValue<JobPostingRegion2, String>(
              postingRegionValue, (value) => value.value);
    }
    final processingOptionsValue = processingOptions;
    if (processingOptionsValue != null) {
      map['processingOptions'] =
          Input.mapOptionalInputValue<ProcessingOptions2, Map<String, dynamic>>(
              processingOptionsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final promotionValueValue = promotionValue;
    if (promotionValueValue != null) {
      map['promotionValue'] = promotionValueValue;
    }
    final qualificationsValue = qualifications;
    if (qualificationsValue != null) {
      map['qualifications'] = qualificationsValue;
    }
    map['requisitionId'] = requisitionId;
    final responsibilitiesValue = responsibilities;
    if (responsibilitiesValue != null) {
      map['responsibilities'] = responsibilitiesValue;
    }
    map['tenantId'] = tenantId;
    map['title'] = title;
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = Input.mapOptionalInputValue<JobVisibility2, String>(
          visibilityValue, (value) => value.value);
    }
    return map;
  }

  factory JobArgs9.fromMap(Map<String, dynamic> map) {
    return JobArgs9(
      addresses: Input.asOptionalInput<List<String>>(map['addresses']),
      applicationInfo:
          Input.asOptionalInput<ApplicationInfo2>(map['applicationInfo']),
      company: Input.asInput<String>(map['company']),
      compensationInfo:
          Input.asOptionalInput<CompensationInfo2>(map['compensationInfo']),
      customAttributes:
          Input.asOptionalInput<Map<String, String>>(map['customAttributes']),
      degreeTypes:
          Input.asOptionalInput<List<JobDegreeTypesItem2>>(map['degreeTypes']),
      department: Input.asOptionalInput<String>(map['department']),
      description: Input.asInput<String>(map['description']),
      employmentTypes: Input.asOptionalInput<List<JobEmploymentTypesItem2>>(
          map['employmentTypes']),
      incentives: Input.asOptionalInput<String>(map['incentives']),
      jobBenefits:
          Input.asOptionalInput<List<JobJobBenefitsItem2>>(map['jobBenefits']),
      jobEndTime: Input.asOptionalInput<String>(map['jobEndTime']),
      jobLevel: Input.asOptionalInput<JobJobLevel2>(map['jobLevel']),
      jobStartTime: Input.asOptionalInput<String>(map['jobStartTime']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      name: Input.asOptionalInput<String>(map['name']),
      postingExpireTime:
          Input.asOptionalInput<String>(map['postingExpireTime']),
      postingPublishTime:
          Input.asOptionalInput<String>(map['postingPublishTime']),
      postingRegion:
          Input.asOptionalInput<JobPostingRegion2>(map['postingRegion']),
      processingOptions:
          Input.asOptionalInput<ProcessingOptions2>(map['processingOptions']),
      project: Input.asOptionalInput<String>(map['project']),
      promotionValue: Input.asOptionalInput<int>(map['promotionValue']),
      qualifications: Input.asOptionalInput<String>(map['qualifications']),
      requisitionId: Input.asInput<String>(map['requisitionId']),
      responsibilities: Input.asOptionalInput<String>(map['responsibilities']),
      tenantId: Input.asInput<String>(map['tenantId']),
      title: Input.asInput<String>(map['title']),
      visibility: Input.asOptionalInput<JobVisibility2>(map['visibility']),
    );
  }
}
